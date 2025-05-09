//from the manual, the status of the video corresponds to 0 = playing, and 1
//=not playing, with some devices have -2 as not playing
var video_data = video_draw();
var status = video_data[0];

if (status == 0) {
    var surf = video_data[1];
    if (surface_exists(surf)) {
        //stretch the video to play to the entire screen
        draw_surface_stretched(surf, 0, 0, display_get_gui_width(), display_get_gui_height());
    }
}
//if the video has stopped playing, we transport the room to make the player 
//play here
else if (status == -2 || status == 1) {
    show_debug_message("Video finished — going to Room1");
    video_close()
    room_goto(Room1);
}
else if (status == 2) {
    show_debug_message("Video error.");
}
