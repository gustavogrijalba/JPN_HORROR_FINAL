var video_data = video_draw();
var status = video_data[0];

if (status == 0) {
    var surf = video_data[1];
    if (surface_exists(surf)) {
        draw_surface_stretched(surf, 0, 0, display_get_gui_width(), display_get_gui_height());
    }
} else if (video_get_status() == video_status_closed) {
    //had to use this function to make the video work with gx.games
    video_done = true;
}

