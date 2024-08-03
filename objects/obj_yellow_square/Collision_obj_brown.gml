// Collision event for obj_yellow_square with obj_yellow
if (place_meeting(x, y, obj_brown)) {
    sprite_index = spr_brown;
    with (other) {
        instance_destroy();
    }
}