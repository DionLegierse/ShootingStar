#pragma once

#include <chrono>

class Profiler{
public:
    Profiler();
    ~Profiler();
private:
    std::chrono::system_clock::time_point start;
};