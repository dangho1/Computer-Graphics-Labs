#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
uniform vec3 u_diffuseColor; // The diffuse surface color of the model
uniform vec3 u_ambientColor;
uniform vec3 u_specularColor;
uniform int u_specularPower;
uniform float u_shadowBias;

uniform int u_tglGmaCorr;
uniform int u_tglEnvMapping;
uniform int u_tglTexMapping;
uniform int u_tglShadows;
uniform int u_shadowFBO;
uniform vec3 u_shadowFromView;
uniform samplerCube u_cubemap;
uniform sampler2D u_texture0; // texture sampler 0, texture map
uniform sampler2D u_shadowMapTex; // texture sampler 1, shadow map



// Fragment shader inputs
in vec3 v_color;
in vec3 N;
in vec3 L;
in vec3 V;
in vec3 L_shadow;
in vec4 gl_FragCoord;

// Fragment shader outputs
out vec4 frag_color;
in vec2 v_texcoord_0;

float shadowmap_visibility(sampler2D shadowmap, vec4 shadowPos, float bias)
{
    vec2 delta = vec2(0.5) / textureSize(shadowmap, 0).xy;
    vec2 texcoord = (shadowPos.xy / shadowPos.w) * 0.5 + 0.5;
    float depth = (shadowPos.z / shadowPos.w) * 0.5 + 0.5;
    
    // Sample the shadowmap and compare texels with (depth - bias) to
    // return a visibility value in range [0, 1]. If you take more
    // samples (using delta to offset the texture coordinate), the
    // returned value should be the average of all comparisons.
    float texel = texture(shadowmap, texcoord).r;
    float visibility = float(texel > depth - bias);
    return visibility;
}

void main()
{
    float bias = u_shadowBias;
    vec4 shadowPos = vec4(u_shadowFromView, 0.0f);
    
    float K_s = 0.04;
    //float u_shadowBias = 0.5;
    
    // Calculate the halfway vector
    vec3 H = normalize(L + V);

    float diffuse;

    // Calculate the diffuse (Lambertian) reflection term
    if(u_tglShadows == 1)
        diffuse = max(0.0, dot(N, L_shadow));
    else
        diffuse = max(0.0, dot(N, L));


    // Coefficients
    float K_d = 1;
    float K_a = K_d*0.01;
    
    // Ambient light
    vec3 I_a = K_a * u_ambientColor;

    vec3 I_d;
    vec3 I_s;
    

    if (u_tglShadows == 1)
    {
        I_d = K_d * u_diffuseColor * diffuse * shadowmap_visibility(u_shadowMapTex, shadowPos, bias);
        I_s = (u_specularPower+8)/8 * K_s * u_specularColor * pow(dot(N, H), u_specularPower) * shadowmap_visibility(u_shadowMapTex, shadowPos, bias);
    }
    else
    {
        I_d = K_d * u_diffuseColor * diffuse;
        I_s = (u_specularPower+8)/8 * K_s * u_specularColor * pow(dot(N, H), u_specularPower);
    
    }
        
    vec3 output_color = pow(v_color, vec3(1 / 2.2));

    // Blinn-Phong lighting
    vec3 I = I_a + I_d + I_s;

    //Reflection vector
    vec3 R = reflect(-V, N);


    if (u_tglTexMapping == 1)
    {
        vec4 textureColor = texture(u_texture0, v_texcoord_0).rgba;

        if (u_tglGmaCorr == 1)
            frag_color = vec4((1-u_tglEnvMapping) * output_color + I, 1.0) * textureColor;
        else
            frag_color = vec4((1-u_tglEnvMapping) * v_color + I, 1.0) * textureColor;
    }
    else
    {
        vec3 cubeMapColor = texture(u_cubemap, R).rgb;

        if (u_tglGmaCorr == 1)
            frag_color = vec4((1-u_tglEnvMapping) * output_color + (cubeMapColor * u_tglEnvMapping) + I, 1.0);
        else
            frag_color = vec4((1-u_tglEnvMapping) * v_color + (cubeMapColor * u_tglEnvMapping) + I, 1.0);
    }
}
