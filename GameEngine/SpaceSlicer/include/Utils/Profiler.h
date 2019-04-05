#pragma once

#include <chrono>
#include <string>

class Profiler{
public:
    Profiler(std::string aFuncionName);
    ~Profiler();
    
private:
    Profiler();

    static bool isProfiled;

    std::string _functionName;
    std::chrono::system_clock::time_point _start;
};