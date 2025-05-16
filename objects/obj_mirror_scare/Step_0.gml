if (state == "fade_in") {
    if (image_alpha < 1) {
        image_alpha += reveal_speed;
    } else {
        //hold the full image for 2 seconds
        alarm[0] = room_speed * 2;
        //could use this for later if i implement something else
        state = "hold";
    }
}