// Collision event with obj_yellow_square
if (place_meeting(x, y, obj_yellow_square)) {
    // Check if the global.obj_controller is defined and exists
    if (is_undefined(global.obj_controller) || !instance_exists(global.obj_controller)) {
        show_message("Error: obj_controller instance not found.");
    } else {
        // Check if the falling card matches the next card in the sequence
        var next_card_sprite = global.obj_controller.color_order[global.obj_controller.current_position];
        if (sprite_index == next_card_sprite) {
            // Change the sprite of obj_yellow_square to the sprite of the falling card
            obj_yellow_square.sprite_index = sprite_index;
            
            // Call the collect_card function with the current instance
            scr_collect_card(self);
            
            // Destroy the falling card
            instance_destroy();
        } else {
            // If the card is not the next in the order, close the game
            show_message("Incorrect card collected. The game will now close.");
            game_end();
        }
    }
}