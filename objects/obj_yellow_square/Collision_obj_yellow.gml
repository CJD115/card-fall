// Collision event for obj_yellow_square with obj_yellow
if (place_meeting(x, y, obj_yellow)) {
    sprite_index = spr_yellow;
    with (other) {
        instance_destroy();
    }
}