if (current_message < 0) exit;

var _str = messages[current_message].msg;

if (current_char < string_length(_str)) {
    char_timer += 1;

    if (char_timer >= char_interval || keyboard_check(input_key)) {
        char_timer = 0;
        current_char += 1;

        var _char = string_char_at(_str, current_char);
        if (_char != " " && _char != "." && _char != "," && _char != "…") {
            audio_play_sound(text, 0, false);
        }
    }

    draw_message = string_copy(_str, 0, current_char);
} else if (keyboard_check_pressed(input_key)) {
    current_message++;
    if (current_message >= array_length(messages)) {
        instance_destroy();
    } else {
        current_char = 0;
        char_timer = 0;
    }
}

