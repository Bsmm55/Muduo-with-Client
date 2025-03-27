#include "mymuduo/TcpServer.h"
#include "mymuduo/InetAddress.h"
#include "mymuduo/EventLoop.h"
#include "mymuduo/TcpConnection.h"
#include <iostream>
#include <string>

void onConnection(const TcpConnectionPtr& conn)
{
    if (conn->connected())
    {
        std::cout << "New connection from " << conn->getPeerAddress().toIpPort() << std::endl;
    }
    else
    {
        std::cout << "Connection closed from " << conn->getPeerAddress().toIpPort() << std::endl;
    }
}

void onMessage(const TcpConnectionPtr& conn, Buffer* buf, Timestamp recvt)
{
    std::string message = buf->retriveAllString();
    std::cout << "Received message: " << message << recvt.toString() << std::endl;

    // Echo back the received message to the client
    conn->send(message);
}

void onWriteComplete(const TcpConnectionPtr& conn)
{
    std::cout << "Message sent to " << conn->getPeerAddress().toIpPort() << std::endl;
}

int main()
{
    // Create an EventLoop object
    EventLoop loop;

    // Define the server address and port to listen on
    InetAddress listenAddr(8080);  // Listen on port 8080

    // Create the TcpServer instance
    TcpServer server(&loop, listenAddr, "TestServer");
    

    // Set the callback functions
    server.setConnectionCallback(onConnection);
    server.setMessageCallback(onMessage);
    server.setWriteCompleteCallback(onWriteComplete);

    // Set the number of threads in the EventLoopThreadPool (optional)
    
    server.setThreadNum(1);
    // Start the server
    server.start();

    // Run the EventLoop
    loop.loop();

    return 0;
}
