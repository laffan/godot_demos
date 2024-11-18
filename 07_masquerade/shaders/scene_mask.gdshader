shader_type canvas_item;

// Uniform variables to be set from the Godot script
uniform sampler2D reveal_texture;
uniform sampler2D mask_texture;

void fragment() {
    // Sample the reveal and mask textures
    vec4 reveal_color = texture(reveal_texture, UV);
    vec4 mask_color = texture(mask_texture, UV);

    // Use the mask's alpha channel to reveal the underlying texture
    COLOR = vec4(reveal_color.rgb, mask_color.a);
}