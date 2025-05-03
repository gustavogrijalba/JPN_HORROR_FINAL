var _dx = 0;
var _dy = gui_h * 0.7;
var _boxw = gui_w;
var _boxy = gui_h - _dy;
//this will draw our overall dialogue box
draw_sprite_stretched(spr_temp_box, 0, _dx, _dy, _boxw, _boxy);

//create logic to now draw the text of the character's dialogue
_dx += 16;
_dy += 16;

draw_set_font(Font1);
//receive name from our struct and draw it to the screen
var _name = messages[current_message].name;
draw_text(_dx, _dy, _name);

_dy += 40;

draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2);

