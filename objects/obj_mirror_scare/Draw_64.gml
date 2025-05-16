//black background
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);

//draw the mirror scare sprite
draw_set_alpha(image_alpha);
//fill the entire screen with the image
draw_sprite_stretched(spr_mirror_scare, 0, 0, 0, display_get_width(), display_get_height());
draw_set_alpha(1);