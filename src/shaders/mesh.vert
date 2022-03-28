#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
uniform mat4 u_view;
uniform float u_time;
// ...

// Vertex inputs (attributes from vertex buffers)
layout(location = 0) in vec4 a_position;
in vec3 a_color;
in vec3 a_normal;
// ...

// Vertex shader outputs
out vec3 v_color;
// ...

void main()
{
    //gl_Position = a_position;
    //To move add some value to the xyz coordinates.  EX: cos_time + -a_position.x, -sin_time + -a_position.y
    //To scale, multiply some value with xyz pos. 
    // To change color, multiply the color.
    float cos_time = 0.5 * cos(u_time);
    float sin_time = 0.5 * sin(u_time);
    //gl_Position = vec4( cos_time + -a_position.x, -sin_time + -a_position.y, 0, 1.0);
    gl_Position = u_view * a_position;
    v_color = v_color = 0.5 * a_normal + 0.5; // maps the normal direction to an RGB color;
    

}
