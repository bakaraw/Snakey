#ifndef CAMERA_H
#define CAMERA_H

#include "glm/geometric.hpp"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
enum Camera_Movement {
    FORWARD,
    BACKWARD,
    LEFT,
    RIGHT
};

// Default camera values
const float YAW         = -90.0f;
const float PITCH       =  -60.0f;
const float SPEED       =  2.5f;
const float SENSITIVITY =  0.1f;
const float ZOOM        =  45.0f;

class Camera {
public:
  glm::vec3 Position;
  glm::vec3 Front;
  glm::vec3 Up;
  glm::vec3 Right;
  float Yaw;
  float Pitch;
  float Zoom;

  Camera(glm::vec3 position, glm::vec3 front, glm::vec3 up);
  glm::mat4 getViewMatrix();
  void updateCameraVectors();
  void moveCamera(glm::vec3 newPosition);
  void rotateCamera(float pitch, float yaw, float roll);
  
};

#endif
