if (instance_exists(obj_dialog)) exit;
//basic dialog test (will be commented out and cemented later)

/* if (keyboard_check_pressed(vk_space)) {
    create_dialog([
    {
    name: "Zhenzhen",
    msg: "ι υƨɛժ ƭσ ɓɛ α ϝαɾʍɛɾ ђɛɾɛ"
    }
    ])
} */

//basic movement for the player object
//computing the movement direction
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var move_dir = _hor*_hor + _ver*_ver;

//animation control (only display animation when walking)
if (move_dir != 0) {
    // player is moving: use walking sprite and animate
    sprite_index = spr_animated;
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
