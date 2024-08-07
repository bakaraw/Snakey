#ifndef PLAYER_H
#define PLAYER_H

#include "Cube.h"
#include <GLFW/glfw3.h>
enum Direction { UPWARD, DOWNWARD, LEFTWARD, RIGHTWARD };

class Player : public Cube {

  const float UNIT;

public:
  Direction direction = RIGHTWARD;
  Player(glm::vec3 initialPosition,const float scaleFactor, glm::vec3 color,
         const float UNIT)
      : Cube(initialPosition, scaleFactor, color), UNIT(UNIT) {}

  void movePlayer(bool isTick) {
    float unitDirection;
    if (direction == RIGHTWARD || direction == DOWNWARD) {
      unitDirection = UNIT;
    } else if (direction == LEFTWARD || direction == UPWARD) {
      unitDirection = -UNIT;
    }

    if (isTick) {
      if (direction == RIGHTWARD || direction == LEFTWARD) {
        Position.x += unitDirection;
	std::cout << "Player.x = " << Position.x << std::endl;
      } else {
        Position.z += unitDirection;
	std::cout << " helo2 " << std::endl;
      }
    }

    // bounds
    if (Position.x > 6.9f) {
      Position.x -= UNIT * 10 * 2;
    }

    if (Position.x < -6.4f) {
      Position.x += UNIT * 10 * 2;
    }

    if (Position.z < -10.0f) {
      Position.z += UNIT * 10 * 2;
    }

    if (Position.z > 0.0f) {
      Position.z -= UNIT * 10 * 2;
    }
  }
};

#endif
