// Step event of obj_credits

// Move the credits up
credits_y -= credits_speed;

// Check if the credits have moved off the screen
if (credits_y < -array_length(credits) * line_spacing) {
    // Optionally, restart the credits or switch to another room
    credits_y = room_height; // Restart the credits
    // room_goto(rm_main_menu); // Switch to the main menu room
}