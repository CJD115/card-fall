// Collision event with obj_red
if (obj_controller.color_order[obj_controller.current_position] == spr_red) {
    sprite_index = spr_red;
    obj_controller.current_position++;
    obj_controller.red_count++;
    if (obj_controller.red_count >= 4) {
        obj_controller.remove_color_from_pool(spr_red);
    }
    instance_destroy(other);
    if (obj_controller.current_position >= array_length(obj_controller.color_order)) {
        obj_controller.add_random_color();
    }
    obj_controller.check_win_condition(); // Check win condition
}