//this controller will be handling the game logic such as flags 
//and game progression
// obj_controller → Create Event

if (!variable_global_exists("dialog_shown_room_start")) {
    global.dialog_shown_room_start = false;

    //notebook progression states
    global.notebook_1_found = false;
    global.notebook_2_found = false;
    global.notebook_3_found = false;
    //show dialog
    global.all_notebooks_found = false;
    global.notebook_dialog_unlocked = false; // becomes true only after 
    //final notebook
}

if (!variable_global_exists("hotaro_in_test_room")) {
    global.hotaro_in_test_room = false;
}

