// Collision event for obj_yellow_square with obj_yellow
if (place_meeting(x, y, obj_red)) {
    sprite_index = spr_red;
    with (other) {
        instance_destroy();
    }
}