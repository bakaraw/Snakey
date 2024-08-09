#ifndef PLAYER_H
#define PLAYER_H

#include "../graphics/Shader.h"
#include "../utilities/DeltaTime.h"
#include "Body.h"
#include "Cube.h"
#include "glm/ext/vector_float3.hpp"
#include <GLFW/glfw3.h>
#include <cmath>
#include <cstddef>
#include <limits>
#include <vector>

class Player : public Cube {
private:
  const float INTERPOLATION_SPEED =
      5.0f; // Adjust this value to control the interpolation speed
  const float UNIT;
  const float SPEED = 10.0f;
  int count = 0;

public:
  std::vector<Body> PlayerBody;
  Direction direction = RIGHTWARD;

  Player(glm::vec3 initialPosition, Shader *shader, const float scaleFactor,
         glm::vec3 color, const float UNIT)
      : Cube(initialPosition, shader, scaleFactor, color), UNIT(UNIT) {}

  void spawnBody() {
    glm::vec3 offset = glm::vec3(ScaleFactor, 0.0f, ScaleFactor);
    glm::vec3 initialPosition = glm::vec3(Position - offset);
    glm::vec3 color = CubeColor - glm::vec3(0.2f);

    if (PlayerBody.size() == 0) {
      PlayerBody.push_back(Body(initialPosition, SHADER, ScaleFactor, color,
                                SPEED, direction, UNIT));
    } else {
      glm::vec3 lastBodyPos = PlayerBody.back().Position - offset;
      PlayerBody.push_back(Body(lastBodyPos, SHADER, ScaleFactor, color, SPEED,
                                direction, UNIT));
      std::cout << "gege" << PlayerBody.size() << std::endl;
    }
  }

  void movePlayer(DeltaTime deltaTime) {
    float unitDirection;
    float currentDirection;
    if (direction == RIGHTWARD || direction == DOWNWARD) {
      unitDirection = UNIT;
    } else if (direction == LEFTWARD || direction == UPWARD) {
      unitDirection = -UNIT;
    }

    if (direction == RIGHTWARD || direction == LEFTWARD) {
      Position.x += unitDirection * SPEED * deltaTime.deltaTime;
    } else {
      Position.z += unitDirection * SPEED * deltaTime.deltaTime;
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

    updateBox();
    /*for (Body body : PlayerBody) {*/
    /*  body.moveBody(Position - (static_cast<float>(PlayerBody.size()) **/
    /*                            glm::vec3(ScaleFactor, 0.0f, 0.0f)));*/
    /*  body.draw();*/
    /*}*/

    for (std::size_t i = 0; i < PlayerBody.size(); i++) {
      std::cout << "size: " << PlayerBody.size() << std::endl;
      if (PlayerBody.size() == 1) {
        PlayerBody[i].moveBody(Position);
      } else {
        PlayerBody[i].moveBody(PlayerBody[i - 1].Position);
      }
      PlayerBody.front().moveBody(Position);
      PlayerBody[i].draw();
    }
  }
};

#endif
