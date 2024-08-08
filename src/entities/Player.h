#ifndef PLAYER_H
#define PLAYER_H

#include "Cube.h"
#include <GLFW/glfw3.h>
#include <cmath>
#include <limits>
#include "../utilities/DeltaTime.h"
enum Direction { UPWARD, DOWNWARD, LEFTWARD, RIGHTWARD };

class Player : public Cube {
private:
    const float INTERPOLATION_SPEED = 5.0f; // Adjust this value to control the interpolation speed
  const float UNIT;
  const float  SPEED = 10.0f;
  int count = 0;
public:
  glm::vec3 GhostPosition;
  Direction direction = RIGHTWARD;
  Player(glm::vec3 initialPosition, const float scaleFactor, glm::vec3 color,
         const float UNIT)
      : Cube(initialPosition, scaleFactor, color), UNIT(UNIT), GhostPosition(initialPosition) {}

  void movePlayer(DeltaTime deltaTime, float isTick) {
    float unitDirection;
    float currentDirection;
    if (direction == RIGHTWARD || direction == DOWNWARD) {
      unitDirection = UNIT;
    } else if (direction == LEFTWARD || direction == UPWARD) {
      unitDirection = -UNIT;
    }

    if (isTick) {
      if (direction == RIGHTWARD || direction == LEFTWARD) {
        GhostPosition.x += unitDirection;
      } else {
        GhostPosition.z += unitDirection;
      }
    }

    /*if (direction == RIGHTWARD || direction == LEFTWARD) {*/
    /*  Position.x += unitDirection * SPEED * deltaTime.deltaTime;*/
    /*} else {*/
    /*  Position.z += unitDirection * SPEED * deltaTime.deltaTime;*/
    /*}*/

    // bounds
    if (GhostPosition.x > 6.9f) {
      GhostPosition.x -= UNIT * 10 * 2;
    }

    if (GhostPosition.x < -6.4f) {
      GhostPosition.x += UNIT * 10 * 2;
    }

    if (GhostPosition.z < -10.0f) {
      GhostPosition.z += UNIT * 10 * 2;
    }

    if (GhostPosition.z > 0.0f) {
      GhostPosition.z -= UNIT * 10 * 2;
    }

    updateBox();
  }
};

#endif
