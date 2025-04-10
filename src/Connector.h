#pragma once
#include "InetAddress.h"
#include "Channel.h"
#include "EventLoop.h"
#include "Callbacks.h"
#include "Socket.h"
class Connector : public noncopyable,
                  public std::enable_shared_from_this<Connector>
{
public:
    Connector(EventLoop* loop, const InetAddress& serverAddr);
    ~Connector();

    void setNewConnectionCallback(const NewConnectionCallback& cb)
    {
        newConnectionCallback_ = cb;
    }

    void start();
    void restart();
    void stop();

    const InetAddress serverAddress() const {return serverAddr_;};
private:
    /* data */
    enum StateE
    {
        kDisconnected, // 已经断开连接
        kConnecting,   // 正在连接
        kConnected     // 已连接
    };
    static const int KMaxRetryDelayMs = 30*1000;
    static const int KInitRetryDelayMs = 500;

    void setState(StateE s) 
    {
        s_= s;
    }
    void startInLoop();
    void stopInLoop();

    void connect();
    void connecting(int sockfd);

    void handleWrite();
    void handleError();

    void retry(int sockfd);
    int removeAndResetChannel();
    void resetChannel();

    EventLoop* loop_;
    std::unique_ptr<Channel> channel_;
    InetAddress serverAddr_;
    bool connect_;
    StateE s_;

    NewConnectionCallback newConnectionCallback_;
    int retryDelayMs_;
    
};  
