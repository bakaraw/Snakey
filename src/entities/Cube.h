#ifndef CUBE_H
#define CUBE_H
#include "../graphics/Shader.h"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include "../utilities/HitBox.h"
#include "glm/ext/vector_float3.hpp"
class Cube {
public:
  glm::vec3 Position;
  glm::vec3 CubeColor;
  float ScaleFactor;
  HitBox Box;

  Cube(glm::vec3 position, float scaleFactor = 0.7f,
       glm::vec3 cubeColor = glm::vec3(1.0f, 0.0f, 0.0f))
      : Position(position), ScaleFactor(scaleFactor), CubeColor(cubeColor), Box(Position, Position + glm::vec3(ScaleFactor)) {}

  void draw(Shader &shader) {
    glm::mat4 model = glm::mat4(1.0f);
    model = glm::translate(model, Position);
    model = glm::scale(model, glm::vec3(ScaleFactor));
    shader.setMat4("model", model);
		shader.setVec3("objectColor", CubeColor);
    glDrawArrays(GL_TRIANGLES, 0, 36);
  }

  void updateBox(){
    Box.min = Position;
    Box.max = Position + glm::vec3(ScaleFactor);
  }

};

#endif
