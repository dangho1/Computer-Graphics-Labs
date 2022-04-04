#version 330
#extension GL_ARB_explicit_attrib_location : require

// Uniform constants
// ...

// Fragment shader inputs
in vec3 v_color;
// ...


// Fragment shader outputs
out vec4 frag_color;


void main()
{
    frag_color = vec4(v_color, 0.0);

    /* PART 3 */
    //frag_color = v_color;

}
