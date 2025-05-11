//this controller will be handling the game logic such as flags 
//and game progression
// obj_controller → Create Event

if (!variable_global_exists("dialog_shown_room_start")) {
    global.dialog_shown_room_start = false;
    global.notebook_found = false;
    global.notebook_dialog_finished = false;
}
