// Collision event for obj_yellow_square with obj_blue
if (place_meeting(x, y, obj_blue)) {
    sprite_index = spr_blue;
    with (other) {
        instance_destroy();
    }
}