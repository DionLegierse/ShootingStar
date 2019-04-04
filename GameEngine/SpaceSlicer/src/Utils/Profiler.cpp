#include "Utils/Profiler.h"

Profiler::Profiler(){
    this->start = std::chrono::system_clock::now();
}

Profiler::~Profiler(){
    std::chrono::duration end = std::chrono::system_clock::now() - start;
    printf("this function took %f ticks" );
}