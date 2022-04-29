#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
uniform float u_time;
uniform mat4 u_view;
uniform mat4 u_projection;
uniform mat4 u_model;
uniform vec3 u_lightPosition; // The position of your light source

uniform vec3 u_diffuseColor; // The diffuse surface color of the model
uniform vec3 u_ambientColor;

uniform int u_displayNormals;
uniform int u_displayOrtho;
uniform mat4 u_ortho;

// Vertex inputs (attributes from vertex buffers)
layout(location = 0) in vec4 a_position;
in vec3 a_color;
layout(location = 2) in vec3 a_normal;
in vec2 a_texcoord_0;

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

    // Calculate the diffuse (Lambertian) reflection term
    float diffuse = max(0.0, dot(N, L));

    // Coefficients
    float K_d = 1;
    float K_a = K_d*0.01;
    
    // Ambient light
    vec3 I_a = K_a * u_ambientColor;

    // Diffuse light
    vec3 I_d = K_d * u_diffuseColor * diffuse;

    v_color = I_a + I_d + a_normal * u_displayNormals;
   
    v_texcoord_0 = a_texcoord_0;
}
