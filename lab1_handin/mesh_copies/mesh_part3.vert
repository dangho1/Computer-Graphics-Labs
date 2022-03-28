#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
uniform mat4 u_transform;
uniform float u_time;
// ...

// Vertex inputs (attributes from vertex buffers)
layout(location = 0) in vec4 a_position;
in vec3 a_color;
// ...

// Vertex shader outputs
out vec3 v_color;
// ...

void main()
{
    //gl_Position = a_position;
    float cos_time = 0.5 * cos(u_time);
    float sin_time = 0.5 * sin(u_time);
    gl_Position = vec4( cos_time + -a_position.x, -sin_time + -a_position.y, 0, 1.0);
    v_color = abs(sin(u_time))* a_color;
    

}
