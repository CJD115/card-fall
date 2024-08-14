// Draw event of obj_next_card_display
var x_start = x; // Starting x position for the UI
var y_start = y; // Starting y position for the UI

// Scale factors
var scale_x = 1.25; // Adjust the scale factor for width
var scale_y = 1.25; // Adjust the scale factor for height

// Check if the global.obj_controller is defined and exists
if (is_undefined(global.obj_controller) || !instance_exists(global.obj_controller)) {
    //show_message("Error: obj_controller instance not found.");
} else {
    // Calculate the next card position
    var next_position = global.obj_controller.current_position;

    // Draw the next card with scaling
    draw_sprite_ext(global.obj_controller.color_order[next_position], 0, x_start, y_start, scale_x, scale_y, 0, c_white, 1);
}