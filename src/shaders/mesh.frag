#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
uniform vec3 u_specularColor;
uniform int u_specularPower;

uniform int u_toggleGammaCorrection;


// Fragment shader inputs
in vec3 v_color;
in vec3 N;
in vec3 L;
in vec3 V;

// Fragment shader outputs
out vec4 frag_color;

void main()
{
    float K_s = 0.04;
    
    // Calculate the halfway vector
    vec3 H = normalize(L + V);

    // Specular light
    vec3 I_s = (u_specularPower+8)/8 * K_s * u_specularColor * pow(dot(N, H), u_specularPower);

    vec3 output_color = pow(v_color, vec3(1 / 2.2));

    if (u_toggleGammaCorrection == 1)
        frag_color = vec4(output_color + I_s, 1.0);
    else
        frag_color = vec4(v_color + I_s, 1.0);
}
