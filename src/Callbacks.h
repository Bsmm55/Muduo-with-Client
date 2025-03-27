#pragma once

#include <memory>
#include <functional>
#include "Logger.h"
#include "Timestamp.h"

class Buffer;
class TcpConnection;
class Connector;
//智能指针
using TcpConnectionPtr = std::shared_ptr<TcpConnection>;
using ConnectorPtr = std::shared_ptr<Connector>;

//callback
using ConnectionCallback = std::function<void(const TcpConnectionPtr &)>;
using CloseCallback = std::function<void(const TcpConnectionPtr &)>;
using WriteCompleteCallback = std::function<void(const TcpConnectionPtr &)>;
using HighWaterMarkCallback = std::function<void(const TcpConnectionPtr &, size_t)>;


using MessageCallback = std::function<void(const TcpConnectionPtr &,
                                           Buffer *,
                                           Timestamp)>;

using NewConnectionCallback = std::function<void(int sockfd)>;


using TimerCallback = std::function<void()>;



// void defaultConnectionCallback(const TcpConnectionPtr& conn);

// void defaultMessageCallback(const TcpConnectionPtr& conn,
//                             Buffer* buffer,
//                             Timestamp receiveTime);