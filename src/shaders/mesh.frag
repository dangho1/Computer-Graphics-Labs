#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
uniform vec3 u_specularColor;
uniform int u_specularPower;

uniform int u_tglGmaCorr;
uniform int u_tglEnvMapping;
uniform int u_tglTexMapping;
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


    if (u_tglTexMapping == 1)
    {
        vec4 textureColor = texture(u_texture0, v_texcoord_0).rgba;

        if (u_tglGmaCorr == 1)
            frag_color = vec4((1-u_tglEnvMapping) * output_color + I_s, 1.0) * textureColor;
        else
            frag_color = vec4((1-u_tglEnvMapping) * v_color + I_s, 1.0) * textureColor;
    }
    else
    {
        vec3 cubeMapColor = texture(u_cubemap, R).rgb;

        if (u_tglGmaCorr == 1)
            frag_color = vec4((1-u_tglEnvMapping) * output_color + (cubeMapColor * u_tglEnvMapping) + I_s, 1.0);
        else
            frag_color = vec4((1-u_tglEnvMapping) * v_color + (cubeMapColor * u_tglEnvMapping) + I_s, 1.0);
    }
}
