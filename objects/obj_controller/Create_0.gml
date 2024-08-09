// Create event of obj_controller

// Define the order of spade cards
color_order = [
    spr_spade_1, spr_spade_2, spr_spade_3, spr_spade_4, spr_spade_5, 
    spr_spade_6, spr_spade_7, spr_spade_8, spr_spade_9, spr_spade_10, 
    spr_spade_11, spr_spade_12, spr_spade_13
];
current_position = 0;

// Timer for spawning cards
spawn_timer = 0;
spawn_interval = 60; // Adjust the interval as needed (e.g., 60 frames = 1 second)

// Store a reference to this instance in a global variable
global.obj_controller = id;