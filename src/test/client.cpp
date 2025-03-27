#include "mymuduo/TcpClient.h"
#include "mymuduo/EventLoop.h"
#include "mymuduo/InetAddress.h"
#include "mymuduo/Logger.h"

#include <iostream>
#include <string>

void onConnection(const TcpConnectionPtr& conn)
{
    if (conn->connected())
    {
        LOG_INFO("Connected to server: %s", conn->peerAddress().toIpPort().c_str());
        conn->send("123"); // 发送消息 "123" 给服务器
    }
    else
    {
        LOG_INFO("Disconnected from server.");
    }
}

void onMessage(const TcpConnectionPtr& conn, Buffer* buffer, Timestamp time)
{
    std::string msg = buffer->retrieveAllAsString();
    conn->send("123");
    LOG_INFO("Received: %s", msg.c_str());
}

int main()
{
    LOG_INFO("Client starting...");

    EventLoop loop;
    InetAddress serverAddr(8080); // 服务器地址和端口
    TcpClient client(&loop, serverAddr, "TestClient");

    client.setConnectionCallback(onConnection);
    client.setMessageCallback(onMessage);

    // 确保 connect 操作是在 EventLoop 的线程中执行
    loop.runInLoop([&client]() {
        LOG_INFO("Attempting to connect to server...");
        client.connect();
    });

    loop.loop(); // 启动事件循环

    LOG_INFO("Client stopped.");
    return 0;
}
