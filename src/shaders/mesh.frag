#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
uniform vec3 u_specularColor;
uniform int u_specularPower;

uniform int u_toggleGammaCorrection;
uniform int u_toggleEnvironmentMapping;
uniform samplerCube u_cubemap;
uniform sampler2D u_texture0; // texture sampler



// Fragment shader inputs
in vec3 v_color;
in vec3 N;
in vec3 L;
in vec3 V;

// Fragment shader outputs
out vec4 frag_color;
in vec2 v_texcoord_0;

void main()
{
    float K_s = 0.04;
    
    // Calculate the halfway vector
    vec3 H = normalize(L + V);

    // Specular light
    vec3 I_s = (u_specularPower+8)/8 * K_s * u_specularColor * pow(dot(N, H), u_specularPower);

    vec3 output_color = pow(v_color, vec3(1 / 2.2));

    //Reflection vector
    vec3 R = reflect(-V, N);

    /*

    vec3 color = texture(u_cubemap, R).rgb;
 
    if (u_toggleGammaCorrection == 1)
        frag_color = vec4((1-u_toggleEnvironmentMapping) * output_color + (color * u_toggleEnvironmentMapping) + I_s, 1.0);
    else
        frag_color = vec4((1-u_toggleEnvironmentMapping) * v_color + (color * u_toggleEnvironmentMapping) + I_s, 1.0);
    
    */
    vec4 color = texture(u_texture0, v_texcoord_0).rgba;
    frag_color = color;
}
