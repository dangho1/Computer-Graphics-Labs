#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
uniform float u_time;
uniform mat4 u_view;
uniform mat4 u_projection;
uniform mat4 u_model;
uniform vec3 u_lightPosition; // The position of your light source

uniform int u_displayNormals;
uniform int u_displayOrtho;
uniform mat4 u_ortho;

// Vertex inputs (attributes from vertex buffers)
layout(location = 0) in vec4 a_position;
in vec3 a_color;
layout(location = 2) in vec3 a_normal;
layout(location = 3) in vec2 a_texcoord_0;

// Vertex shader outputs
out vec3 v_color;
out vec3 N;
out vec3 L;
out vec3 V;
out vec2 v_texcoord_0;

void main()
{
    if (u_displayOrtho == 1)
        gl_Position = u_ortho * u_model * a_position;
    else
        gl_Position = u_projection * u_view * u_model * a_position;
    
    mat4 mv = mat4(u_view * u_model);

    // Transform the vertex position to view space (eye coordinates)
    vec3 positionEye = vec3(mv * a_position);

    // Calculate the view-space normal
    N = normalize(mat3(mv) * a_normal);

    // Calculate the view-space light direction
    L = normalize(u_lightPosition - positionEye);

    // Calculate the view vector (the negative of the view-space position)
    V = normalize(vec3(0.0f, 0.0f, 0.0f) - positionEye);

    v_color = a_normal * u_displayNormals;
   
    v_texcoord_0 = a_texcoord_0;
}
