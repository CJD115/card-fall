// Create event of obj_controller
alarm[0] = 30; // Set an initial alarm to spawn sprites

// Define the order of colors
color_order = [spr_blue, spr_brown, spr_yellow];
current_position = 0;

// Initialize counters for each color
blue_count = 0;
red_count = 0;
yellow_count = 0;
pink_count = 0;
brown_count = 0;
white_count = 0;

// Initialize the pool of available colors
available_colors = [spr_blue, spr_yellow, spr_pink, spr_red, spr_brown, spr_white];

// Function to add a random color to the color_order array
function add_random_color() {
    if (array_length(available_colors) > 0) {
        var random_color = available_colors[irandom(array_length(available_colors) - 1)];
        array_push(color_order, random_color);
    }
}

// Helper function to find the index of a color in the available colors pool
function find_color_index(color) {
    for (var i = 0; i < array_length(available_colors); i++) {
        if (available_colors[i] == color) {
            return i;
        }
    }
    return -1; // Return -1 if the color is not found
}

// Helper function to remove a color from the available colors pool
function remove_color_from_pool(color) {
    var index = find_color_index(color);
    if (index != -1) {
        array_delete(available_colors, index, 1);
    }
}

// Function to check if all colors have reached a count of 4
function check_win_condition() {
    if (blue_count >= 4 && red_count >= 4 && yellow_count >= 4 && pink_count >= 4 && brown_count >= 4 && white_count >= 4) {
        show_message("Good job! You win");
    }
}