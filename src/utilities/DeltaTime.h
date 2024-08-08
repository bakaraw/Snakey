#ifndef DELTATIME_H
#define DELTATIME_H

#include "GLFW/glfw3.h"
#include <iostream>
class DeltaTime {
public:
  float TimeStep;
  float LastTime;
  float deltaTime;
  float LastTick;

  DeltaTime(float timeStep) : LastTime(glfwGetTime()), TimeStep(timeStep){}
  float getDeltaTime(){
    float currentTime = glfwGetTime();
    deltaTime = currentTime - LastTime;
    LastTime = currentTime;
    return deltaTime;
  }
 bool isTick(){
    float currentTime = glfwGetTime();
    if (currentTime - LastTick  > TimeStep) {
      LastTick = currentTime;
      return true;
    }
    return false;
  }
};

#endif
