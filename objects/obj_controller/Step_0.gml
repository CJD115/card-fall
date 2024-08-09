// Step event of obj_controller

// Increment the spawn timer
spawn_timer++;

// Check if it's time to spawn a new card
if (spawn_timer >= spawn_interval) {
    // Reset the spawn timer
    spawn_timer = 0;

    // Create a new falling card at a random x position
    var new_card = instance_create_layer(irandom(room_width), 0, "Instances", obj_falling_card);

    // Assign a random spade sprite to the new card
    var random_index = irandom(array_length(color_order) - 1);
    new_card.sprite_index = color_order[random_index];
}