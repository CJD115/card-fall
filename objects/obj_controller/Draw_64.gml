// Draw GUI event of obj_controller
var x_start = 10; // Starting x position for the UI
var y_start = 10; // Starting y position for the UI
var spacing = 40; // Spacing between each color icon

// Draw the order of colors
for (var i = 0; i < array_length(color_order); i++) {
    if (i == current_position) {
        draw_rectangle(x_start + i * spacing - 2, y_start - 2, x_start + i * spacing + 34, y_start + 34, false);
    }
    draw_sprite(color_order[i], 0, x_start + i * spacing, y_start);
}

// Draw the counters in the bottom left
var counter_x = 10;
var counter_y = room_height - 100; // Adjust as needed

draw_text(counter_x, counter_y, "Blue: " + string(blue_count));
draw_text(counter_x, counter_y + 20, "Red: " + string(red_count));
draw_text(counter_x, counter_y + 40, "Yellow: " + string(yellow_count));
draw_text(counter_x, counter_y + 60, "Pink: " + string(pink_count));
draw_text(counter_x, counter_y + 80, "Brown: " + string(brown_count));
draw_text(counter_x, counter_y + 100, "White: " + string(white_count));