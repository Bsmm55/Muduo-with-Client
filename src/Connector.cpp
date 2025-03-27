#include "Connector.h"
#include "Logger.h"

const int Connector::KMaxRetryDelayMs;

Connector::Connector(EventLoop* loop, const InetAddress& serverAddr)
    :loop_(loop)
    ,serverAddr_(serverAddr)
    ,connect_(false)
    ,s_(kDisconnected)
    ,retryDelayMs_(KInitRetryDelayMs)
{

}

Connector::~Connector()
{

}


void Connector::start()
{
    connect_ = true;
    if (!loop_->isInLoopThread())
    {
        loop_->runInLoop(std::bind(&Connector::start, this));
        return;
    }
    startInLoop();
}

void Connector::startInLoop()
{
    if (!loop_->isInLoopThread())
    {
        loop_->runInLoop(std::bind(&Connector::startInLoop, this));
        return;
    }

    if (connect_)
    {
        connect();
    }
    else
    {
        LOG_DEBUG("Do not connect");
    }
}

void Connector::connect()
{
    int sockfd = ::socket(AF_INET, SOCK_STREAM | SOCK_NONBLOCK | SOCK_CLOEXEC, IPPROTO_TCP);
    if (sockfd < 0) {
        LOG_FATAL("connect sockfd create error");
    }
    //::connect(sockfd, sockaddr_cast(&addr), static_cast<socklen_t>(sizeof addr));
    int ret = ::connect(sockfd,(sockaddr *)serverAddr_.getSockAddr(),static_cast<socklen_t>(sizeof serverAddr_));
    int savederrno = (ret == 0)? 0 :errno;
     switch (savederrno)
    {
        case 0:
        case EINPROGRESS:
        case EINTR:
        case EISCONN:
        connecting(sockfd);
        break;

        case EAGAIN:
        case EADDRINUSE:
        case EADDRNOTAVAIL:
        case ECONNREFUSED:
        case ENETUNREACH:
        retry(sockfd);
        break;

        case EACCES:
        case EPERM:
        case EAFNOSUPPORT:
        case EALREADY:
        case EBADF:
        case EFAULT:
        case ENOTSOCK:
        LOG_INFO("connect error in Connector::startInLoop ");
        if (::close(sockfd) < 0)
        {
            LOG_INFO("sockets::close");
        }
        break;

        default:
        LOG_INFO("Unexpected error in Connector::startInLoop ");
        if (::close(sockfd) < 0)
        {
            LOG_INFO("sockets::close");
        }
        // connectErrorCallback_();
        break;
    }
}

void Connector::connecting(int sockfd)
{
    setState(kConnecting);
    channel_.reset(new Channel(loop_,sockfd));
    channel_->setWriteCallback(std::bind(&Connector::handleWrite,this));
    channel_->setErrorCallback(std::bind(&Connector::handleError,this));

    channel_->enableWriting();
}

void Connector::handleWrite()
{
    if(s_ == kConnecting)
    {
        int sockfd = removeAndResetChannel();
        int optval;
        socklen_t optlen = static_cast<socklen_t>(sizeof optval);
        int err = (::getsockopt(sockfd,SOL_SOCKET,SO_ERROR,&optval,&optlen) < 0) ? errno : optval;
        if(err)
        {
            LOG_ERROR("Connector::handleWrite ERROR 1");
            if (sockfd >= 0) retry(sockfd);
        }
        else if(Socket::isSelfConnect(sockfd))
        {
            LOG_ERROR("Connector::handleWrite ERROR 2");
            if (sockfd >= 0) retry(sockfd);
        }
        else
        {
            setState(kConnected);
            if(connect_)
            {
                newConnectionCallback_(sockfd);
            }
            else
            {
                ::close(sockfd);
            }
        }
    }
    else
    {
        LOG_ERROR("Connector handleWrite s_ is not kConnecting");
    }

}
void Connector::handleError()
{
    LOG_ERROR("Connector handleerror");
    if(s_ == kConnecting)
    {
        int sockfd = removeAndResetChannel();
        int optval;
        socklen_t optlen = static_cast<socklen_t>(sizeof optval);
        int err = (::getsockopt(sockfd,SOL_SOCKET,SO_ERROR,&optval,&optlen) < 0) ? errno : optval;
        LOG_ERROR("Connector handleerror err: %d", err);
        retry(sockfd);
    }
}

void Connector::retry(int sockfd)
{
    ::close(sockfd);
    setState(kDisconnected);
    if(connect_)
    {
        LOG_INFO("Connector retry");
        loop_->runAfter(retryDelayMs_/1000.0,
                        std::bind(&Connector::startInLoop, shared_from_this()));
        retryDelayMs_ = std::min(retryDelayMs_ * 2, KMaxRetryDelayMs);
    }
    else
    {
        LOG_INFO("do not connect");
    }
}


int Connector::removeAndResetChannel()
{
    channel_->disableAll();
    channel_->remove();
    int sockfd = channel_->fd();
    loop_->queueInLoop(std::bind(&Connector::resetChannel,this));
    return sockfd;
}

void Connector::resetChannel()
{
    channel_.reset();
}


void Connector::restart()
{
    if(!loop_->isInLoopThread())
    {
        LOG_FATAL(" stop connector is not in loop");
    }
    setState(kDisconnected);
    retryDelayMs_ = KInitRetryDelayMs;
    connect_ = true;
    startInLoop();
}


void Connector::stop()
{
    connect_ = false;
    loop_->queueInLoop(std::bind(&Connector::stopInLoop,this));
}

void Connector::stopInLoop()
{
    if(!loop_->isInLoopThread())
    {
        LOG_FATAL(" stop connector is not in loop");
    }
    if(s_ == kConnecting)
    {
        setState(kDisconnected);
        int sockfd = removeAndResetChannel();
        retry(sockfd);
    }
}
