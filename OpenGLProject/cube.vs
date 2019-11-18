#version 330 core
layout(location = 0) in vec3 vertexPos;
layout(location = 1) in vec3 vertexColor;

// Output data ; will be interpolated for each fragment.
out vec3 fragmentColor;

void main() {

    // The color of each vertex will be interpolated
    // to produce the color of each fragment
    fragmentColor = vertexColor;
    gl_Position = vec4(vertexPos,1);
}