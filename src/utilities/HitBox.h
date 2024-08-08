#ifndef HITBOX_H
#define HITBOX_H
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

class HitBox {
public:
  glm::vec3 min;
  glm::vec3 max;
  HitBox(glm::vec3 min, glm::vec3 max) : min(min), max(max) {}
  bool collidesWith(HitBox &other) const {
    return (min.x < other.max.x && max.x > other.min.x &&
            min.y < other.max.y && max.y > other.min.y &&
            min.z < other.max.z && max.z > other.min.z);
  }
};

#endif
