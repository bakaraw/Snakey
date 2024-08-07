#ifndef SHADER_H
#define SHADER_H


#include <fstream>
#include <glad/glad.h>
#include <iostream>
#include <sstream>
#include <glm/mat4x4.hpp>
#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

class Shader {
private:
  enum Type { VERTEX_SHADER, FRAGMENT_SHADER, PROGRAM };
  void checkCompilerError(GLuint shader, Type type);
public:
  GLuint ID;
  Shader(const char *vertexPath, const char *fragmentPath);
  void use();
  void setBool(const std::string &name, bool value) const ;
  void setInt(const std::string &name, int value) const ;
  void setFloat(const std::string &name, float value) const ;
  void setMat4(const std::string &name, glm::mat4 value) const ;
  void setVec3(const std::string &name, glm::vec3 value) const;
};
#endif
