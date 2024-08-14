// Step event of obj_falling_card

// Ensure the card remains scaled
image_xscale = 1.3;
image_yscale = 1.3;

// Move the card downwards
y += fall_speed;

// Destroy the card if it goes out of the room bounds
if (y > room_height) {
    instance_destroy();
}