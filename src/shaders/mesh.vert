#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
uniform mat4 u_view;
uniform float u_time;
uniform mat4 u_projection;
uniform mat4 u_model;
uniform vec3 u_diffuseColor; // The diffuse surface color of the model
uniform vec3 u_lightPosition; // The position of your light source

uniform vec3 u_ambientColor;
uniform vec3 u_specularColor;
uniform float u_specularPower;
// ...

// Vertex inputs (attributes from vertex buffers)
layout(location = 0) in vec4 a_position;
in vec3 a_color;
layout(location = 2) in vec3 a_normal;
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
    // gl_Position = u_view * a_position;
    gl_Position = u_projection * u_view * u_model * a_position;
    //v_color = 0.5 * a_normal; // maps the normal direction to an RGB color;
    
    /* ---- TASK3 ---- */

    //Model View Matrix
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

    //vec3 H = (L + positionEye) / abs(L + positionEye);

    vec3 I_a = K_a * u_ambientColor;

    vec3 I_d = K_d * u_diffuseColor * diffuse;

    vec3 I_s = K_s * u_specularColor * pow(dot(N, H), u_specularPower);

    v_color = I_a + I_d + I_s;

    // Multiply the diffuse reflection term with the base surface color
    //v_color = diffuse * u_diffuseColor + I;
    //v_color = 0.5 * a_normal  + 0.5;
}
