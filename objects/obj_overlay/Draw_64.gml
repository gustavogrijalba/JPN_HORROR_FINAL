var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();
//have an overlay draw over our entire screen to have a different
draw_set_alpha(0.3);
draw_sprite_stretched(spr_backdrop, 0, 0, 0, gui_w, gui_h);
draw_set_alpha(1);