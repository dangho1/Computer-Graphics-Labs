#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
uniform float u_time;
uniform mat4 u_view;
uniform mat4 u_projection;
uniform mat4 u_model;
uniform vec3 u_diffuseColor; // The diffuse surface color of the model
uniform vec3 u_lightPosition; // The position of your light source
uniform vec3 u_ambientColor;
uniform vec3 u_specularColor;
uniform int u_specularPower;
uniform int u_displayNormals;
uniform int u_displayOrtho;
uniform mat4 u_ortho;

// Vertex inputs (attributes from vertex buffers)
layout(location = 0) in vec4 a_position;
in vec3 a_color;
layout(location = 2) in vec3 a_normal;

// Vertex shader outputs
out vec3 v_color;

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
    vec3 N = normalize(mat3(mv) * a_normal);

    // Calculate the view-space light direction
    vec3 L = normalize(u_lightPosition - positionEye);

    // Calculate the diffuse (Lambertian) reflection term
    float diffuse = max(0.0, dot(N, L));

    vec3 viewDir = normalize(vec3(0.0f, 0.0f, -1.0f) - positionEye);

    float K_a = 0.2;
    float K_d = 1;
    float K_s = 1;

    vec3 H = normalize(L + viewDir);

    vec3 I_a = K_a * u_ambientColor;

    vec3 I_d = K_d * u_diffuseColor * diffuse;

    vec3 I_s = K_s * u_specularColor * pow(dot(N, H), u_specularPower);

    v_color = I_a + I_d + I_s + a_normal*u_displayNormals;
}
