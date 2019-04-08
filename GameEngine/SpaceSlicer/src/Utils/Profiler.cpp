#include "Utils/Profiler.h"

#include <cstdio>

#define MICROSECONDS_SCALER static_cast<double>(10e6)

bool Profiler::isProfiled = false;

Profiler::Profiler(std::string aFunctionName){
    this->_functionName = aFunctionName;
    this->_start = std::chrono::system_clock::now();
}

void Profiler::stop(){
    if(!Profiler::isProfiled){
        std::chrono::duration<double> end = std::chrono::duration<double>(std::chrono::system_clock::now() - this->_start);
        printf("%s took %f microseconds\n", this->_functionName.c_str(), end.count() * MICROSECONDS_SCALER );
        Profiler::isProfiled = true;
    }
}

Profiler::~Profiler(){
    if(!Profiler::isProfiled){
        std::chrono::duration<double> end = std::chrono::duration<double>(std::chrono::system_clock::now() - this->_start);
        printf("%s took %f microseconds\n", this->_functionName.c_str(), end.count() * MICROSECONDS_SCALER );
        Profiler::isProfiled = true;
    }
}

Profiler::Profiler(){}
