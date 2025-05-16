if (global.video_finished) {
    room_goto(Room1);
    global.video_finished = false;
}


if (!global.death_sequence_started) {
    if (global.all_notebooks_found && global.mirror_scare_occured) {
        global.death_sequence_started = true;
        alarm[0] = room_speed * 20; // 15 seconds delay
    }
}

