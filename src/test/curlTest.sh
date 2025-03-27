#!/bin/bash

# 发送 GET 请求
curl -X GET http://localhost:8080/hello &

# 发送 POST 请求
curl -X POST http://localhost:8080/data -d "test data" &

# 等待所有后台任务完成
wait

echo "All requests completed."