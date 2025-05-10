draw_set_alpha(1);

// Desired scale factor (adjust to taste, 0.95 gets you close to full screen)
var scale_x = display_get_gui_width() / sprite_get_width(sprite_index);
var scale_y = display_get_gui_height() / sprite_get_height(sprite_index);
var scale = min(scale_x, scale_y) * 0.95; // keeps aspect ratio, 95% of screen

var img_width = sprite_get_width(sprite_index) * scale;
var img_height = sprite_get_height(sprite_index) * scale;

// Center it
var x_pos = (display_get_gui_width() - img_width) / 2;
var y_pos = (display_get_gui_height() - img_height) / 2;

draw_sprite_ext(
    sprite_index,
    0,
    x_pos,
    y_pos,
    scale,
    scale,
    0,
    c_white,
    1
);
