if (instance_exists(obj_dialog)) exit;
    
//check if the room has started, and display the dialog
//ensure that it only plays at room1
if (!global.dialog_shown_room_start && room = Room1) {
    var intro_dialog = [
        { name: "Naru", msg: "Where... am I?" },
        { name: "Naru", msg: "Everything feels... off." }
    ];

    create_dialog(intro_dialog);
    //set true so that it never runs again 
    global.dialog_shown_room_start = true;
}

//basic movement for the player object
//computing the movement direction
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var move_dir = _hor*_hor + _ver*_ver;

//animation control (only display animation when walking)
if (move_dir != 0) {
    // player is moving: use walking sprite and animate
    sprite_index = spr_player_animated;
    image_speed  = 1;
} else {
    //if the player is idle, the player will only use frame 0
    image_speed = 0;                     // halt animation
    image_index = 0;                     // show frame #0 only
}

//this is ensuring the player does not move faster in a diagno
var dx = 0, dy = 0;
if (move_dir != 0) {
    dx = _hor * move_speed / move_dir;
    dy = _ver * move_speed / move_dir;
}
//movement for the player to collide with our tilemap that holds 
//all our obstacles
move_and_collide(dx, dy, tilemap);
//add a manual check to also collide with npcs
if (place_meeting(x, y, obj_npc_parent)) {
    x -= dx;
    y -= dy;
}
