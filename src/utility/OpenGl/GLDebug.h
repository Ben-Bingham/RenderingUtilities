#pragma once

#include <gl/glew.h>
#include <GLFW/glfw3.h>

namespace RenderingUtilities {
    void APIENTRY glDebugOutput(GLenum source, GLenum type, unsigned int id, GLenum severity,
        GLsizei length, const char* message, const void* userParam);
}