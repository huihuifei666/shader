#ifdef GL_ES
attribute mediump vec4 a_position;
attribute mediump vec2 a_texcoord;
attribute mediump vec4 a_color;

varying mediump vec4 v_color;
varying mediump vec2 v_texcoord;

#else

attribute vec4 a_position;
attribute vec2 a_texcoord;
attribute vec4 a_color;

varying vec4 v_color;
varying vec2 v_texcoord;

#endif

void main()
{

    gl_Position = CC_PMatrix * a_position;
    v_color = a_color;
    v_texcoord = a_texcoord;
}