#include "imgui/imgui.h"
#include "imgui/imgui_impl_glfw.h"
#include "imgui/imgui_impl_opengl3.h"

#include "glm/ext/matrix_clip_space.hpp"
#include "glm/ext/matrix_transform.hpp"
#include "glm/trigonometric.hpp"
#include "graphics/Camera.h"
#include "graphics/Shader.h"
#include <GLFW/glfw3.h>
#include <glad/glad.h>
#include <iostream>
#include <string>
#include "entities/Cube.h"
#include "entities/Score.h"

#define S_WIDTH 800
#define S_HEIGHT 600

enum Direction {
  UPWARD,
  DOWNWARD,
  LEFTWARD,
  RIGHTWARD

};

float vertices[] = {
    -0.5f, -0.5f, -0.5f, 0.0f, 0.0f, 0.5f,  -0.5f, -0.5f, 1.0f, 0.0f,
    0.5f,  0.5f,  -0.5f, 1.0f, 1.0f, 0.5f,  0.5f,  -0.5f, 1.0f, 1.0f,
    -0.5f, 0.5f,  -0.5f, 0.0f, 1.0f, -0.5f, -0.5f, -0.5f, 0.0f, 0.0f,

    -0.5f, -0.5f, 0.5f,  0.0f, 0.0f, 0.5f,  -0.5f, 0.5f,  1.0f, 0.0f,
    0.5f,  0.5f,  0.5f,  1.0f, 1.0f, 0.5f,  0.5f,  0.5f,  1.0f, 1.0f,
    -0.5f, 0.5f,  0.5f,  0.0f, 1.0f, -0.5f, -0.5f, 0.5f,  0.0f, 0.0f,

    -0.5f, 0.5f,  0.5f,  1.0f, 0.0f, -0.5f, 0.5f,  -0.5f, 1.0f, 1.0f,
    -0.5f, -0.5f, -0.5f, 0.0f, 1.0f, -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
    -0.5f, -0.5f, 0.5f,  0.0f, 0.0f, -0.5f, 0.5f,  0.5f,  1.0f, 0.0f,

    0.5f,  0.5f,  0.5f,  1.0f, 0.0f, 0.5f,  0.5f,  -0.5f, 1.0f, 1.0f,
    0.5f,  -0.5f, -0.5f, 0.0f, 1.0f, 0.5f,  -0.5f, -0.5f, 0.0f, 1.0f,
    0.5f,  -0.5f, 0.5f,  0.0f, 0.0f, 0.5f,  0.5f,  0.5f,  1.0f, 0.0f,

    -0.5f, -0.5f, -0.5f, 0.0f, 1.0f, 0.5f,  -0.5f, -0.5f, 1.0f, 1.0f,
    0.5f,  -0.5f, 0.5f,  1.0f, 0.0f, 0.5f,  -0.5f, 0.5f,  1.0f, 0.0f,
    -0.5f, -0.5f, 0.5f,  0.0f, 0.0f, -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,

    -0.5f, 0.5f,  -0.5f, 0.0f, 1.0f, 0.5f,  0.5f,  -0.5f, 1.0f, 1.0f,
    0.5f,  0.5f,  0.5f,  1.0f, 0.0f, 0.5f,  0.5f,  0.5f,  1.0f, 0.0f,
    -0.5f, 0.5f,  0.5f,  0.0f, 0.0f, -0.5f, 0.5f,  -0.5f, 0.0f, 1.0f};

GLuint VAO, VBO;
void initializeGLFW();
void initializeBuffers();
void renderScene(Shader &shader, Camera &camera);
void processInput(GLFWwindow *window);
void initializeImGui();
void movePlayer();

glm::vec3 modelPosition(-5.7f, 0.0f, 0.0f);
const float MODEL_SCALE = 1.0f;
const float SCALE_FACTOR = 0.7f;
const float UNIT = MODEL_SCALE * SCALE_FACTOR;
float TIME_STEP = 0.2f;
float lastTime;
int stepCount = 1;
Direction direction = RIGHTWARD;

float maxX = 0.0f;
float minX = 0.0f;
float maxZ = 0.0f;
float minZ = 0.0f;

Cube player(modelPosition, SCALE_FACTOR, glm::vec3(79/255.0f,184/255.0f,44/255.0f));
Score score(modelPosition, UNIT, 19, 19);

int main() {
  initializeGLFW();

  GLFWwindow *window =
      glfwCreateWindow(S_WIDTH, S_HEIGHT, "Snakey", NULL, NULL);
  if (window == NULL) {
    std::cout << "window failed" << std::endl;
    glfwTerminate();
    return -1;
  }

  glfwMakeContextCurrent(window);

  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
    std::cout << "Failed to initialize GLAD" << std::endl;
    glfwDestroyWindow(window);
    glfwTerminate();
    return -1;
  }

  glEnable(GL_DEPTH_TEST);

  Shader shader("assets/shaders/vShader.glsl", "assets/shaders/fShader.glsl");
  glm::vec3 cameraPosition(0.5f, 12.0f, 1.8f);
  glm::vec3 cameraFront(0.0f, 0.0f, -1.0f);
  glm::vec3 cameraUp(0.0f, 1.0f, 0.0f);
  Camera camera(cameraPosition, cameraFront, cameraUp);

  initializeBuffers();
  shader.use();

  // initializing ImGui
  IMGUI_CHECKVERSION();
  ImGui::CreateContext();
  ImGuiIO &io = ImGui::GetIO();
  (void)io;
  ImGui::StyleColorsDark();
  ImGui_ImplGlfw_InitForOpenGL(window, true);
  ImGui_ImplOpenGL3_Init("#version 330");

  lastTime = glfwGetTime();
  
  while (!glfwWindowShouldClose(window)) {

    initializeImGui();
    processInput(window);
    renderScene(shader, camera);
    ImGui::Begin("Controls");
    ImGui::Text("Camera");
    ImGui::InputFloat3("Translation", &camera.Position[0]);
    ImGui::SliderFloat("Pitch", &camera.Pitch, -89.0f, 89.0);
    ImGui::SliderFloat("Yaw", &camera.Yaw, -180.0f, 180.0f);
    ImGui::Text("Object");
    /*ImGui::InputFloat3("Translation", &modelPosition[0]);*/
    ImGui::SliderFloat3("Translation", &modelPosition[0], -10.0f, 10.0f);
    ImGui::Text("Time Step");
    ImGui::SliderFloat(" ", &TIME_STEP, 0.01f, 1.0f);
    std::string countStr = std::to_string(stepCount);
    ImGui::Text("%s", countStr.c_str());
    std::string dirStr = std::to_string(direction);
    ImGui::Text("%s", dirStr.c_str());

    std::string numStr = std::to_string(maxX);
    ImGui::Text("maxX: %s", numStr.c_str());
    numStr = std::to_string(minX);
    ImGui::Text("minX: %s", numStr.c_str());
    numStr = std::to_string(maxZ);
    ImGui::Text("maxZ: %s", numStr.c_str());
    numStr = std::to_string(minZ);
    ImGui::Text("minZ: %s", numStr.c_str());
    ImGui::End();

    ImGui::Render();
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

    glfwSwapBuffers(window);
    glfwPollEvents();
  }

  glfwDestroyWindow(window);
  glfwTerminate();
  return 0;
}

void initializeGLFW() {

  glfwInit();
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
  glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);
}

void initializeBuffers() {
  glGenVertexArrays(1, &VAO);
  glGenBuffers(1, &VBO);

  glBindVertexArray(VAO);
  glBindBuffer(GL_ARRAY_BUFFER, VBO);
  glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * (sizeof(float)),
                        (void *)0);
  glEnableVertexAttribArray(0);

  glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * (sizeof(float)),
                        (void *)(3 * sizeof(float)));
  glEnableVertexAttribArray(1);
}

void renderScene(Shader &shader, Camera &camera) {
  glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  shader.use();

  glm::mat4 projection =
      glm::perspective(glm::radians(camera.Zoom),
                       (float)S_WIDTH / (float)S_HEIGHT, 1.0f, 100.0f);
  shader.setMat4("projection", projection);

  glm::mat4 view = camera.getViewMatrix();
  shader.setMat4("view", view);

  // bind vertex to draw the model
  glBindVertexArray(VAO);

  movePlayer();
  player.draw(shader, modelPosition);
  score.draw(shader, score.Position);

  camera.updateCameraVectors();

  glDrawArrays(GL_TRIANGLES, 0, 36);
  glBindVertexArray(0);
}

void processInput(GLFWwindow *window) {
  if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) {
    direction = UPWARD;
  } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) {
    direction = DOWNWARD;
  } else if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
    direction = RIGHTWARD;
  } else if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
    direction = LEFTWARD;
  }
}

void initializeImGui() {
  ImGui_ImplOpenGL3_NewFrame();
  ImGui_ImplGlfw_NewFrame();
  ImGui::NewFrame();
}

void movePlayer() {
  float unitDirection;
  if (direction == RIGHTWARD || direction == DOWNWARD) {
    unitDirection = UNIT;
  } else if (direction == LEFTWARD || direction == UPWARD) {
    unitDirection = -UNIT;
  }

  if (glfwGetTime() - lastTime > TIME_STEP) {
    if (direction == RIGHTWARD || direction == LEFTWARD) {
      modelPosition.x += unitDirection;
    } else {
      modelPosition.z += unitDirection;
    }
    lastTime = glfwGetTime();
    score.randomPosition();

    stepCount++;
  }

  // bounds
  if (modelPosition.x > 6.9f) {
    modelPosition.x -= UNIT * 10 * 2;
    stepCount = 1;
  }

  if (modelPosition.x < -6.4f) {
    modelPosition.x += UNIT * 10 * 2;
    stepCount = 1;
  }

  if (modelPosition.z < -10.0f) {
    modelPosition.z += UNIT * 10 * 2;
    stepCount = 1;
  }

  if (modelPosition.z > 0.0f) {
    modelPosition.z -= UNIT * 10 * 2;
    stepCount = 1;
  }

  if (modelPosition.x >= maxX) {
    maxX = modelPosition.x;
  }

  if (modelPosition.x <= minX) {
    minX = modelPosition.x;
  }

  if (modelPosition.z >= maxZ) {
    maxZ = modelPosition.z;
  }

  if (modelPosition.z <= minZ) {
    minZ = modelPosition.z;
  }
}
