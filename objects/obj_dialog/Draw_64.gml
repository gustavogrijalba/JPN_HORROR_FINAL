// select the appropriate bust sprite based on the speaker's name
var bust_sprite;

switch (messages[current_message].name) {
    case "Aki":
        bust_sprite = spr_bust2;
        break;
    case "Hotaro":
        bust_sprite = spr_bust3;
        break;
    case "Isao":
        bust_sprite = spr_bust;
        break;
}

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
var target_height = box_height; // full box height, no padding
var scale = target_height / sprite_get_height(bust_sprite);
var bust_width = sprite_get_width(bust_sprite) * scale;
var bust_height = sprite_get_height(bust_sprite) * scale;

var portrait_x = box_x + padding;
var portrait_y = box_y + box_height - bust_height; // aligned to bottom of box

draw_sprite_ext(bust_sprite, 0, portrait_x, portrait_y, scale, scale, 0, c_white, 1);

//draw the text of the character speaking
var text_x = portrait_x + bust_width + padding + 8;
var text_y = box_y + padding;

draw_set_font(creepy_font);
draw_text(text_x, text_y, messages[current_message].name);

text_y += 36; // slightly more spacing if text is bigger
draw_text_ext(text_x, text_y, draw_message, -1, box_width - text_x - padding);