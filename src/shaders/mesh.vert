#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
uniform float u_time;
uniform mat4 u_view;
uniform mat4 u_proj;
uniform mat4 u_model;
uniform mat4 u_shadowMatrix;
uniform vec3 u_lightPosition; // The position of your light source
uniform vec4 u_shadowLight;
//uniform vec4 u_shadowFromView;

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
out vec4 shadowPos;
out vec3 L_shadow;
out vec2 v_texcoord_0;
out vec3 fragPos;
out vec4 fragPosLightSpace;

void main()
{ 
    mat4 mv = mat4(u_view * u_model);

    // Transform the vertex position to view space (eye coordinates)
    vec3 positionEye = vec3(mv * a_position);

    /*
    // Calculate the view-space normal
    N = normalize(mat3(mv) * a_normal);

    // Calculate the view-space light direction
    L = normalize((u_view * vec4(u_lightPosition, 1.0f)).xyz - positionEye);
    
    // Calculate the view vector (the negative of the view-space position)
    V = normalize(vec3(0.0f, 0.0f, 0.0f) - positionEye);
    */
    //N = normalize(a_normal);
    //L= normalize(u_lightPosition - fragPos);

    
    
    
    fragPos = vec3(u_model * vec4(a_position));
    N = transpose(inverse(mat3(u_model))) * a_normal;
    v_texcoord_0 = a_texcoord_0;
    fragPosLightSpace = u_shadowMatrix * vec4(fragPos, 1.0);
    gl_Position = u_proj * u_view * vec4(fragPos, 1.0);

    if (u_displayOrtho == 1)
        gl_Position = u_ortho * vec4(fragPos, 1.0);
    
    L = normalize(u_lightPosition - fragPos);
    V = normalize(positionEye - fragPos);

    v_color = a_normal * u_displayNormals;  
}
