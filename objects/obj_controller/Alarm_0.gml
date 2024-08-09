// Alarm[0] event of obj_controller
var random_sprite = choose(spr_spade_1, spr_spade_2, spr_spade_3, spr_spade_4, spr_spade_5, 
    spr_spade_6, spr_spade_7, spr_spade_8, spr_spade_9, spr_spade_10, 
    spr_spade_11, spr_spade_12, spr_spade_13);
instance_create_layer(irandom_range(0, room_width), 0, "Instances", random_sprite);
alarm[0] = 30; // Reset the alarm to spawn the next sprite