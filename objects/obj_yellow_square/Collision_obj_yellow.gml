// Collision event with obj_yellow
if (obj_controller.color_order[obj_controller.current_position] == spr_yellow) {
    sprite_index = spr_yellow;
    obj_controller.current_position++;
    obj_controller.yellow_count++;
    if (obj_controller.yellow_count >= 4) {
        obj_controller.remove_color_from_pool(spr_yellow);
    }
    instance_destroy(other);
    if (obj_controller.current_position >= array_length(obj_controller.color_order)) {
        obj_controller.add_random_color();
    }
    obj_controller.check_win_condition(); // Check win condition
}