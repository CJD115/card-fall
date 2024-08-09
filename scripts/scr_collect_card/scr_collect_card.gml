// scr_collect_card

// Accept the instance as an argument
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
            show_message("Good job! You collected all the spade cards.");
        }
    }
} else {
    show_message("Error: Instance or coordinates not properly initialized.");
}