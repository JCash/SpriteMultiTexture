varying mediump vec2 var_texcoord0;
varying mediump vec2 var_texcoord1;

uniform lowp sampler2D texture_diffuse;
uniform lowp sampler2D texture_color;


uniform lowp vec4 tint;

void main()
{
    // Pre-multiply alpha since all runtime textures already are
    lowp vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
    vec4 diffuse = texture2D(texture_sampler, var_texcoord0.xy);
    vec4 normal = texture2D(texture_sampler, var_texcoord1.xy);
    gl_FragColor =  * tint_pm;
}
