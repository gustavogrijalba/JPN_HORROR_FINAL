if (instance_exists(obj_dialog)) exit;
    
//REUSE HOTARO CODE FOR MOVEMENT 
//when idle, check for the player to see if dialog can be initiated 
if (!moving) {
    if (instance_exists(obj_player) && distance_to_object(obj_player) < 8) {
        can_talk = true;
        if (keyboard_check_pressed(input_key)) {
            create_dialog(dialog);
            moving = true; //can now set the character to be moving
        }
    } else {
        can_talk = false;
    }
} else {
    // at this point, obj_dialog no longer exists
    //meaning the npc can now start walking
    if (!instance_exists(obj_dialog) && room == Room1) {
        //walking logic
        var dx = sign(target_x - x);
        var dy = sign(target_y - y);

        var move_speed = 1;
        if (dx != 0) x += dx * move_speed;
        if (dy != 0) y += dy * move_speed;

        //stop if reached 
        if (x == target_x && y == target_y) {
            moving = false;
            global.aki_in_house = true;
            instance_destroy()
        }
    }
}