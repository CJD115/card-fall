// Collision event for obj_yellow_square with obj_yellow
if (place_meeting(x, y, obj_pink)) {
    sprite_index = spr_pink;
    with (other) {
        instance_destroy();
    }
}