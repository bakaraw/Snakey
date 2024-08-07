#include "Camera.h"
#include "glm/ext/matrix_transform.hpp"
#include "glm/fwd.hpp"
#include "glm/geometric.hpp"
#include "glm/trigonometric.hpp"
#include <cmath>

Camera::Camera(glm::vec3 position, glm::vec3 front, glm::vec3 up){
  Position = position;
  Front = front;
  Up = up;
  Right = glm::normalize(glm::cross(Front, Up));
  Yaw = YAW;
  Pitch = PITCH;
  Zoom = ZOOM;
  updateCameraVectors();
}


glm::mat4 Camera::getViewMatrix(){
  glm::mat4 view = glm::lookAt(Position, Position + Front, Up);
  return view;
}

void Camera::updateCameraVectors(){
  glm::vec3 front;
  front.x = cos(glm::radians(Yaw)) * cos(glm::radians(Pitch));
  front.y = sin(glm::radians(Pitch));
  front.z = sin(glm::radians(Yaw)) * cos(glm::radians(Pitch));
  Front = glm::normalize(front);

  Right = glm::normalize(glm::cross(Front, glm::vec3(0.0f, 1.0f, 0.0f)));
  Up = glm::normalize(glm::cross(Right, Front));
}

void Camera::moveCamera(glm::vec3 newPosition){
  Position += newPosition;
  updateCameraVectors();
}
