// Step event of obj_falling_card
// Move the card downwards
y += fall_speed;

// Destroy the card if it goes out of the room bounds
if (y > room_height) {
    instance_destroy();
}