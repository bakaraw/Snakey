#ifndef CUBE_H
#define CUBE_H
#include "../graphics/Shader.h"
#include "../utilities/HitBox.h"
#include "glm/ext/vector_float3.hpp"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

enum Direction { UPWARD, DOWNWARD, LEFTWARD, RIGHTWARD };

class Cube {
public:
  glm::vec3 Position;
  glm::vec3 CubeColor;
  float ScaleFactor;
  HitBox Box;
  Shader *SHADER;
  
  Cube(glm::vec3 position, Shader *shader, float scaleFactor = 0.7f,
       glm::vec3 cubeColor = glm::vec3(1.0f, 0.0f, 0.0f))
      : Position(position), ScaleFactor(scaleFactor), CubeColor(cubeColor),
        Box(Position, Position + glm::vec3(ScaleFactor)), SHADER(shader){}

  void draw() {
    glm::mat4 model = glm::mat4(1.0f);
    model = glm::translate(model, Position);
    model = glm::scale(model, glm::vec3(ScaleFactor));
    SHADER->setMat4("model", model);
    SHADER->setVec3("objectColor", CubeColor);
    glDrawArrays(GL_TRIANGLES, 0, 36);
  }

  void updateBox() {
    Box.min = Position;
    Box.max = Position + glm::vec3(ScaleFactor);
  }
};

#endif
