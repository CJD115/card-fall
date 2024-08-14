// Create event of obj_credits

// Create an array to store each line of the credits
credits = [
    "Credits",
    "",
    "Game Design: Connor Davis & Mike Whittern",
    "Programming: Connor Davis",
    "Art: Mike Whittern",
    "Music: A Ghost",
    "Special Thanks: The guy who invented cards",
    "",
    "Thank you for playing!"
];

// Set the initial Y position and speed
credits_y = room_height; // Start from the bottom of the room
credits_speed = 1; // Speed at which the credits move up
line_spacing = 32; // Vertical spacing between lines