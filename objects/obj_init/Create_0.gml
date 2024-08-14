// Create the obj_controller instance and assign it to the global variable
global.obj_controller = instance_create_layer(0, 0, "Instances", obj_controller);

// Initialize other global variables if needed
global.obj_controller.fall_speed = 5;
global.obj_controller.fall_speed_increment = 1;
global.obj_controller.spawn_interval = 60;
global.obj_controller.spawn_interval_decrement = 5;
global.obj_controller.current_position = 0;
global.obj_controller.current_array_index = 0;
global.obj_controller.color_order = [];
global.obj_controller.card_arrays = [];
global.obj_controller.suits_collected = 0; // Initialize suits_collected