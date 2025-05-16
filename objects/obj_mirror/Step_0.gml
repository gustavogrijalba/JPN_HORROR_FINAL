//when the player interacts with the mirror, the obj_mirror_scare
//will be created within the the instance layer, which creates a full
//screen view of the scary image, fading in
if (place_meeting(x, y, obj_player)) {
    if (keyboard_check_pressed(vk_space)) {
            instance_create_layer(0, 0, "Instances", obj_mirror_scare);
    }
}