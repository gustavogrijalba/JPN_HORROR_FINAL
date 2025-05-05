//layout for the dialog box (mimicking stardew valley box)
var margin = 32;
var padding = 16;
var portrait_size = 96; // upscale the portrait
var box_height = 160;   // slightly taller to accommodate larger sprite
var box_width = gui_w - margin * 2;
var box_x = margin;
var box_y = gui_h - box_height - 50;

//display/draw the dialog box
draw_sprite_stretched(spr_temp_box, 0, box_x, box_y, box_width, box_height);

//draw the npc sprite 
var npc_sprite = spr_temp_player; 
var portrait_x = box_x + padding;
var portrait_y = box_y + (box_height - portrait_size) / 2;
draw_sprite_ext(npc_sprite, 0, portrait_x, portrait_y, portrait_size / sprite_get_width(npc_sprite), portrait_size / sprite_get_height(npc_sprite), 0, c_white, 1);

//draw the text of the character speaking
var text_x = portrait_x + portrait_size + padding;
var text_y = box_y + padding;

draw_set_font(font2);
draw_text(text_x, text_y, messages[current_message].name);

text_y += 32;
draw_text_ext(text_x, text_y, draw_message, -1, box_width - text_x - padding);

