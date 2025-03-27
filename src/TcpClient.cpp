#include "TcpClient.h"
#include "Logger.h"
TcpClient::TcpClient(EventLoop* loop, const InetAddress& serverAddr, const std::string& name)
        :loop_(loop)
        ,connector_(new Connector(loop,serverAddr))
        ,name_(name)
        ,retry_(false)
        ,connect_(true)
        ,nextConnId_(1)

{
    connector_->setNewConnectionCallback(std::bind(&TcpClient::newConnection, this, std::placeholders::_1));
    LOG_INFO("Tcp cilent");
    
}


TcpClient::~TcpClient()
{
    LOG_INFO("TcpClient::~TcpClient");
    TcpConnectionPtr conn;
    bool unique = false;
    {
        std::lock_guard<std::mutex> lock(mutex_);
        unique = connection_.unique();
        conn = connection_;
    }

    if (conn)
    {
        // FIXME: not 100% safe, if we are in different thread
        CloseCallback cb = std::bind(&TcpClient::removeConnection, this, std::placeholders::_1);
        loop_->runInLoop(
            std::bind(&TcpConnection::setCloseCallback, conn, cb));
        if (unique)
        {
            conn->forceClose();
        }
    }
    else
    {
        connector_->stop();
        // FIXME: HACK
        loop_->runAfter(1, std::bind(&TcpClient::removeConnection, this, conn));
    }
}

void TcpClient::connect()
{
    LOG_INFO("TcpClient::connect");
    connect_ = true;
    connector_->start();
}
void TcpClient::disconnect()
{
    connect_ = false;
    {
        std::lock_guard<std::mutex> lock(mutex_);
        if (connection_)
        {
            connection_->shutdown();
        }
    }
}
void TcpClient::stop()
{
    connect_ = false;
    connector_->stop();
}



void TcpClient::newConnection(int sockfd)
{
    if(!loop_->isInLoopThread())
    {
        LOG_FATAL("TcpClient newConnection isInLoopThread");
    }
    InetAddress peerAddr(Socket::getPeerAddr(sockfd));
    char buf[32];
    snprintf(buf, sizeof buf, ":%s#%d", peerAddr.toIpPort().c_str(), nextConnId_);
    ++nextConnId_;
    std::string connName = name_ + buf;

    InetAddress localAddr(Socket::getLocalAddr(sockfd));
    // FIXME poll with zero timeout to double confirm the new connection
    // FIXME use make_shared if necessary
    TcpConnectionPtr conn(new TcpConnection(loop_,
                                            connName,
                                            sockfd,
                                            localAddr,
                                            peerAddr));

    conn->setConnectionCallback(connectionCallback_);
    conn->setMessageCallback(messageCallback_);
    conn->setWriteCompleteCallback(writeCompleteCallback_);
    conn->setCloseCallback(
        std::bind(&TcpClient::removeConnection, this, std::placeholders::_1)); // FIXME: unsafe
    {
        std::lock_guard<std::mutex> lock(mutex_);
        connection_ = conn;
    }
    conn->connectEstablished();


}
void TcpClient::removeConnection(const TcpConnectionPtr& conn)
{
    if(!loop_->isInLoopThread())
    {
        LOG_FATAL("TcpClient removeConnection isInLoopThread");
    }
    {
        std::lock_guard<std::mutex> lock(mutex_);
        connection_.reset();
    }

    loop_->queueInLoop(std::bind(&TcpConnection::connectDestroyed, conn));
    if (retry_ && connect_)
    {
        LOG_INFO("TcpClient::connect - Reconnecting to ");
        connector_->restart();
    }
}

bool TcpClient::retry() const
{
    
}
