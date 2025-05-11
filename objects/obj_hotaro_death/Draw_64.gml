draw_set_alpha(1);


var scale_x = display_get_gui_width() / sprite_get_width(sprite_index);
var scale_y = display_get_gui_height() / sprite_get_height(sprite_index);
var scale = min(scale_x, scale_y) * 0.95;
var jitter_x = irandom_range(-4, 4);
var jitter_y = irandom_range(-4, 4);
var img_width = sprite_get_width(sprite_index) * scale;
var img_height = sprite_get_height(sprite_index) * scale;

//center the image on the screen
var x_pos = (display_get_gui_width() - img_width) / 2 + jitter_x;
var y_pos = (display_get_gui_height() - img_height) / 2 + jitter_y;

//draw the sprite with a random jitter
draw_sprite_ext(
    sprite_index,
    0,
    x_pos,
    y_pos,
    scale,
    scale,
    irandom_range(-2, 2), // creepy mini-rotation
    c_white,
    1
);
