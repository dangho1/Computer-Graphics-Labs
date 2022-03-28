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
    gl_Position = vec4(-a_position.xyz, 1.0);
    v_color = a_color;
    

}
