// Create event of obj_controller

// Call the initialization script
scr_initialize_globals();

if (room == rm_game) {
    // Define the order of card arrays
    spade_color_order = [
        spr_spade_1, spr_spade_2, spr_spade_3, spr_spade_4, spr_spade_5, spr_spade_6, spr_spade_7, spr_spade_8,
        spr_spade_9, spr_spade_10, spr_spade_11, spr_spade_12, spr_spade_13
    ];
    diamond_color_order = [
        spr_dia_1, spr_dia_2, spr_dia_3, spr_dia_4, spr_dia_5, spr_dia_6, spr_dia_7, spr_dia_8, spr_dia_9,
        spr_dia_10, spr_dia_11, spr_dia_12, spr_dia_13
    ];
    club_color_order = [
        spr_club_1, spr_club_2, spr_club_3, spr_club_4, spr_club_5, spr_club_6, spr_club_7, spr_club_8,
        spr_club_9, spr_club_10, spr_club_11, spr_club_12, spr_club_13
    ];
    heart_color_order = [
        spr_heart_1, spr_heart_2, spr_heart_3, spr_heart_4, spr_heart_5, spr_heart_6, spr_heart_7,
        spr_heart_8, spr_heart_9, spr_heart_10, spr_heart_11, spr_heart_12, spr_heart_13
    ];

    // Store all card arrays in a master array
    card_arrays = [spade_color_order, diamond_color_order, club_color_order, heart_color_order];

    // Seed the random number generator
    randomize();

    // Randomly select the first card array
    current_array_index = irandom(array_length(card_arrays) - 1);
    color_order = card_arrays[current_array_index];
    current_position = 0;

    // Debug message to verify the selected array
    switch (current_array_index) {
        case 0: show_debug_message("Selected array: Spades"); break;
        case 1: show_debug_message("Selected array: Diamonds"); break;
        case 2: show_debug_message("Selected array: Clubs"); break;
        case 3: show_debug_message("Selected array: Hearts"); break;
    }

    // Timer for spawning cards
    spawn_timer = 0;
    spawn_interval = 60; // Adjust the interval as needed (e.g., 60 frames = 1 second)

    // Variables for fall speed and spawn interval increment
    fall_speed_increment = 0.1;
    spawn_interval_decrement = 1;

    // Initial fall speed and spawn interval
    fall_speed = 4;

    // Store a reference to this instance in a global variable
    global.obj_controller = id;

    

    // Initialize the selected skin
 //   global.selected_skin = 1; // Default skin

    // Arrays to store sprites for each skin
 //   global.sprites_skin1 = [
  //      spr_blank, spr_spade_1, spr_spade_2, spr_spade_3, spr_spade_4, spr_spade_5, 
   //     spr_spade_6, spr_spade_7, spr_spade_8, spr_spade_9, spr_spade_10, 
   //     spr_spade_11, spr_spade_12, spr_spade_13, 
   //     spr_dia_1, spr_dia_2, spr_dia_3, spr_dia_4, spr_dia_5, 
   //     spr_dia_6, spr_dia_7, spr_dia_8, spr_dia_9, spr_dia_10, spr_dia_11, spr_dia_12, spr_dia_13, 
   //     spr_club_1, spr_club_2, spr_club_3, spr_club_4, spr_club_5, spr_club_6, spr_club_7, spr_club_8, 
   //     spr_club_9, spr_club_10, spr_club_11, spr_club_12, spr_club_13, 
   //     spr_heart_1, spr_heart_2, spr_heart_3, spr_heart_4, spr_heart_5, spr_heart_6, spr_heart_7, 
   //     spr_heart_8, spr_heart_9, spr_heart_10, spr_heart_11, spr_heart_12, spr_heart_13
//    ];

    //global.sprites_skin2 =  [
       // spr_new_spade_01, spr_new_spade_02, spr_new_spade_03, spr_new_spade_04, spr_new_spade_05, spr_new_spade_06, spr_new_spade_07, spr_new_spade_08, spr_new_spade_09, spr_new_spade_10, spr_new_spade_11, spr_new_spade_12, spr_new_spade_13,
      //  spr_new_hearts_01, spr_new_hearts_02, spr_new_hearts_03, spr_new_hearts_04, spr_new_hearts_05, spr_new_hearts_06, spr_new_hearts_07, spr_new_hearts_08, spr_new_hearts_09, spr_new_hearts_10, spr_new_hearts_11, spr_new_hearts_12, spr_new_hearts_13,
    //    spr_new_dia_01, spr_new_dia_02, spr_new_dia_03, spr_new_dia_04, spr_new_dia_05, spr_new_dia_06, spr_new_dia_07, spr_new_dia_08, spr_new_dia_09, spr_new_dia_10, spr_new_dia_11, spr_new_dia_12, spr_new_dia_13,
   //     spr_new_club_01, spr_new_club_02, spr_new_club_03, spr_new_club_04, spr_new_club_05, spr_new_club_06, spr_new_club_07, spr_new_club_08, spr_new_club_09, spr_new_club_10, spr_new_club_11, spr_new_club_12, spr_new_club_13
//    ];

    // Set the application surface to match the window size
    surface_resize(application_surface, display_get_width(), display_get_height());
}