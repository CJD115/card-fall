var inst = argument0;

// Ensure the instance calling this script exists and has valid coordinates
if (instance_exists(inst) && !is_undefined(inst.x) && !is_undefined(inst.y)) {
    // Check if the global.obj_controller is defined and exists
    if (is_undefined(global.obj_controller) || !instance_exists(global.obj_controller)) {
        show_message("Error: obj_controller instance not found.");
    } else {
        // Increment the current position
        global.obj_controller.current_position = (global.obj_controller.current_position + 1) % array_length(global.obj_controller.color_order);

        // Check win condition
        if (global.obj_controller.current_position == 0) {
            // Increment the number of suits collected
            global.obj_controller.suits_collected += 1;

            // Check if all suits have been collected
            if (global.obj_controller.suits_collected >= 4) {
                // Switch to the credits room
                room_goto(rm_credits);
            } else {
                // Randomly select the next card array
                global.obj_controller.current_array_index = irandom(array_length(global.obj_controller.card_arrays) - 1);
                global.obj_controller.color_order = global.obj_controller.card_arrays[global.obj_controller.current_array_index];

                // Increase fall speed and decrease spawn interval
                global.obj_controller.fall_speed += global.obj_controller.fall_speed_increment;
                global.obj_controller.spawn_interval = max(1, global.obj_controller.spawn_interval - global.obj_controller.spawn_interval_decrement);

                show_debug_message("Good job! You collected all the cards in the current set. Moving to the next set.");
            }
        }
    }
}