// Inherit the parent event
event_inherited();

grid_size = 16;              
move_speed = 2;
moving = false;
target_x = 120;                
target_y = 65;
collision_tiles = layer_tilemap_get_id("tiles_col")
trigger_dialog = false;

if (room == test_room) {
    dialog = global.hotaro_room
}
