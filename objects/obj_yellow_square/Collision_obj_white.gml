// Collision event for obj_yellow_square with obj_yellow
if (place_meeting(x, y, obj_white)) {
    sprite_index = spr_white;
    with (other) {
        instance_destroy();
    }
}