// Step event of obj_controller

if (room == rm_game) {
    // Increment the spawn timer
    spawn_timer++;

    // Check if it's time to spawn a new card
    if (spawn_timer >= spawn_interval) {
        // Reset the spawn timer
        spawn_timer = 0;

        // Check if obj_falling_card is defined
        if (object_exists(obj_falling_card)) {
            var random_x;
            var overlap;

            // Ensure no overlap by checking existing x positions
            do {
                overlap = false;
                random_x = irandom_range(0, room_width);

                // Check for overlap with existing positions
                with (obj_falling_card) {
                    if (abs(random_x - x) < 40) { // Adjust the distance as needed
                        overlap = true;
                        break;
                    }
                }
            } until (!overlap);

            var card = instance_create_layer(random_x, 0, "Instances", obj_falling_card);

            // Assign a random sprite from the color_order array to the new card
            var random_index = irandom(array_length(color_order) - 1);
            card.sprite_index = color_order[random_index];
            card.fall_speed = fall_speed; // Set the fall speed for the card

            // Randomize the next spawn interval to avoid simultaneous spawns
            spawn_interval = irandom_range(10, 20); // Adjust the range as needed
        } else {
            show_debug_message("Error: obj_falling_card is not defined.");
        }
    }
} else {
    // If we are not in rm_game, disable the spawn timer
    spawn_timer = -1;
}