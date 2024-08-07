#ifndef SCORE_H
#define SCORE_H
#include "Cube.h"
#include <cstdlib>
#include <ctime>
class Score : public Cube {

  int MaxUnitX;
  int MaxUnitZ;
  glm::vec3 BasePosition;
  float Unit;

public:
  Score(glm::vec3 basePosition, float unit, int maxUnitX, int maxUnitZ)
      : Cube(basePosition), MaxUnitZ(maxUnitZ), MaxUnitX(maxUnitX),
        BasePosition(basePosition), Unit(unit) {
    srand((unsigned)time(NULL));
  }

  void randomPosition() { 
    float x = BasePosition.x + (Unit * randomInt(MaxUnitX));
    float z = BasePosition.z - (Unit * randomInt(MaxUnitZ));
    Position = glm::vec3(x, 0.0f, z); 
    std::cout << "rend \nx: "<< x << "\nz: " << z << std::endl;
  }

  int randomInt(int max) { 
    return rand() % max; 
  }
};

#endif
