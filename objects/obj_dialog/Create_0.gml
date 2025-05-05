messages = [];
current_message = -1;
draw_message = "";
current_char = 0;
char_timer = 0;
char_interval = 2; // frames between each char
//speed for the drawing of the dialog box
char_speed = 0.8;
input_key = vk_space;

//for drawing our gui dialog box
gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

//will be used for syncing a sound
last_char_index = 0;

