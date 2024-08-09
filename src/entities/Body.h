#ifndef BODY_H
#define BODY_H

#include "../graphics/Shader.h"
#include "../utilities/DeltaTime.h"
#include "Cube.h"
#include "glm/ext/vector_float3.hpp"
class Body : public Cube {
private:
  const float SPEED;
  const float UNIT;

public:
  Direction CurrentDirection;
  Direction PlayerDirection;

  Body(glm::vec3 initialPosition, Shader *shader, float scaleFactor,
       glm::vec3 color, float speed, Direction initialDirection, float unit)
      : Cube(initialPosition, shader, scaleFactor, color), SPEED(speed),
        CurrentDirection(initialDirection), UNIT(unit) {}

  void moveBody(glm::vec3 newPosition) {
    Position = newPosition - glm::vec3(ScaleFactor, 0.0f, 0.0f);
    /*float unitDirection;*/
    /*if (CurrentDirection == RIGHTWARD || CurrentDirection == DOWNWARD) {*/
    /*  unitDirection = UNIT;*/
    /*} else if (CurrentDirection == LEFTWARD || CurrentDirection == UPWARD) {*/
    /*  unitDirection = -UNIT;*/
    /*}*/
    /**/
    /*if (CurrentDirection == RIGHTWARD || CurrentDirection == LEFTWARD) {*/
    /*  Position.x += unitDirection * SPEED * deltaTime;*/
    /*} else {*/
    /*  Position.z += unitDirection * SPEED * deltaTime;*/
    /*}*/
    /*std::cout << deltaTime << std::endl;*/
    /*Position.x += 10;*/
  }
};

#endif
