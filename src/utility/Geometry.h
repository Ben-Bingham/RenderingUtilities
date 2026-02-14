#pragma once

#include <vector>

struct Shape {
	std::vector<float> vertices;
	std::vector<unsigned int> indices;

	unsigned int Size();
};

Shape GetTriangle();
Shape GetCube();
