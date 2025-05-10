if (place_meeting(x, y, obj_player)) { 
    if (room == Room1) {
        room_goto(test_room); 
    } else if (room == test_room) {
        room_goto(Room1); 
    }
}

if (global.notebook_found) {
    instance_destroy();
}

