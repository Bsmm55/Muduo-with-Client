# 指定编译器
CXX = g++
CXXFLAGS = -Wall -g
LDFLAGS = -lmy_muduo -lpthread

# 目标文件
TARGETS = Server Client

# 生成 Server 和 Client
all: $(TARGETS)

Server: testServer3.cpp
	$(CXX) -o $@ $^ $(LDFLAGS)

Client: client.cpp
	$(CXX) -o $@ $^ $(LDFLAGS)

# 清理
clean:
	rm -f $(TARGETS)
