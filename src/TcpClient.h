#pragma once

#include "noncopyable.h"
#include "TcpConnection.h"
#include "Connector.h"
#include "Callbacks.h"
#include "EventLoop.h"
#include <string>

class TcpClient : public noncopyable
{
public:
    TcpClient(EventLoop* loop, const InetAddress& serverAddr, const std::string& name);
    ~TcpClient();

    void connect();
    void disconnect();
    void stop();

    TcpConnectionPtr connection() const
    {
        std::lock_guard<std::mutex> lock(mutex_);
        return connection_;
    }

    EventLoop* getLoop() const {return loop_;};

    bool retry() const;
    void enableRetry(){ retry_ = true; }

    void setConnectionCallback(const ConnectionCallback& cb)
    { connectionCallback_ = cb; }

    void setMessageCallback(const MessageCallback& cb)
    { messageCallback_ = cb; }

    void setWriteCompleteCallback(const WriteCompleteCallback& cb)
    { writeCompleteCallback_ = cb; }
private:

    void newConnection(int sockfd);
    void removeConnection(const TcpConnectionPtr& conn);

    /* data */
    EventLoop* loop_;
    ConnectorPtr connector_;
    const std::string name_;
    ConnectionCallback connectionCallback_;
    MessageCallback messageCallback_;
    WriteCompleteCallback writeCompleteCallback_;
    bool retry_;
    bool connect_;
    int nextConnId_;

    mutable std::mutex mutex_;  
    TcpConnectionPtr connection_;
};


