//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
 
uniform sampler2D tex0;
uniform vec2 textureSize;

vec4 effect() {
        float tx = 0.5 * (1.0 / textureSize.x);
        float ty = 0.5 * (1.0 / textureSize.y);
        
        vec2 dg1 = vec2( tx, ty);
        vec2 dg2 = vec2(-tx, ty);
        vec2 dx = vec2(tx, 0.0);
        vec2 dy = vec2(0.0, ty);
                 
        vec3 _c00 = texture2D(tex0, v_vTexcoord - dg1).xyz;
        vec3 _c01 = texture2D(tex0, v_vTexcoord - dx).xyz;
        vec3 _c02 = texture2D(tex0, v_vTexcoord + dg2).xyz;
        vec3 _c10 = texture2D(tex0, v_vTexcoord - dy).xyz;
        vec3 _c11 = texture2D(tex0, v_vTexcoord).xyz;
        vec3 _c12 = texture2D(tex0, v_vTexcoord + dy).xyz;
        vec3 _c20 = texture2D(tex0, v_vTexcoord - dg2).xyz;
        vec3 _c21 = texture2D(tex0, v_vTexcoord + dx).xyz;
        vec3 _c22 = texture2D(tex0, v_vTexcoord + dg1).xyz;
        
        vec3 first  = mix(_c00, _c20, fract(v_vTexcoord.x * textureSize.x + 0.5));
        vec3 second = mix(_c02, _c22, fract(v_vTexcoord.x * textureSize.x + 0.5));
        
        vec3 mid_horiz = mix(_c01, _c21, fract(v_vTexcoord.x * textureSize.x + 0.5));
        vec3 mid_vert  = mix(_c10, _c12, fract(v_vTexcoord.y * textureSize.y + 0.5));
        
        vec3 res = mix(first, second, fract(v_vTexcoord.y * textureSize.y + 0.5));
        vec4 final = vec4(0.26 * (res + mid_horiz + mid_vert) + 3.5 * abs(res - mix(mid_horiz, mid_vert, 0.5)), 1.0);
        
        final = compress(final, 0.8, 5.0);
        final.a = 1.0;
        
        return final;
}

void main() {
 gl_FragColor = v_vColour * effect();
}