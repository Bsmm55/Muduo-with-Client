#include "mymuduo/Timer.h"
#include <thread>

class EventLoop {
public:
    void runAfter(double delay, TimerCallback&& cb) {
        std::thread([delay, cb]() {
            Timer timer(delay, std::move(cb));
            timer.start();
        }).detach();  // 让定时器在独立线程运行
    }
};

// === 测试 ===
void onTimeout() {
    std::cout << "Timer expired! Executing callback." << std::endl;
}

int main() {
    EventLoop loop;
    loop.runAfter(3.0, onTimeout);  // 3 秒后执行

    std::this_thread::sleep_for(std::chrono::seconds(5));  // 等待测试
    return 0;
}