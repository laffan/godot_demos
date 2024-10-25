shader_type canvas_item;
uniform sampler2D screen_texture:hint_screen_texture,repeat_disable,filter_nearest;
uniform sampler2D gradient: hint_default_black;
uniform float depth = 0.03;
uniform int line_thickness = 7;
uniform float bulge_amount = 0.03; // Controls the amount of bulging
uniform float step_softness = 0.5; // Controls the softness of the step transition

void fragment() {
    // Create bulge effect by distorting UV coordinates
    vec2 uv = SCREEN_UV;
    vec2 center_offset = uv - vec2(0.5);
    float dist = length(center_offset);

    // Apply barrel distortion
    float bulge = 1.0 + (bulge_amount * dist * dist);
    uv = center_offset * bulge + vec2(0.5);

    vec3 color = texture(screen_texture, uv).rgb;
    float grayscale_value = dot(color, vec3(0.299, 0.587, 0.114));

    // Create stepped lines with soft transitions
    float line_pos = VERTEX.x;
    float step_value = float(int(line_pos) % (2 * line_thickness)) / float(line_thickness);
    float soft_step = smoothstep(0.0, step_softness, step_value) -
                      smoothstep(1.0 - step_softness, 1.0, step_value);

    grayscale_value -= depth * soft_step;

    // Add subtle scan line effect
    float scan_line = sin(uv.y * 480.0) * 0.005;
    grayscale_value += scan_line;

    vec3 sampled_color = texture(gradient, vec2(grayscale_value, 0.0)).rgb;

    // Add slight vignette effect
    float vignette = 1.0 - dist * 0.5;
    COLOR.rgb = sampled_color * vignette;
}