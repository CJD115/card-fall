// Alarm[0] event of obj_controller
var random_sprite = choose(spr_spade_1, spr_spade_2, spr_spade_3, spr_spade_4, spr_spade_5, 
    spr_spade_6, spr_spade_7, spr_spade_8, spr_spade_9, spr_spade_10, 
    spr_spade_11, spr_spade_12, spr_spade_13, 
    spr_dia_1, spr_dia_2, spr_dia_3, spr_dia_4, spr_dia_5, 
    spr_dia_6, spr_dia_7, spr_dia_8, spr_dia_9, spr_dia_10, spr_dia_11, spr_dia_12, spr_dia_13, 
    spr_club_1, spr_club_2, spr_club_3, spr_club_4, spr_club_5, spr_club_6, spr_club_7, spr_club_8, 
    spr_club_9, spr_club_10, spr_club_11, spr_club_12, spr_club_13, 
    spr_heart_1, spr_heart_2, spr_heart_3, spr_heart_4, spr_heart_5, spr_heart_6, spr_heart_7, 
    spr_heart_8, spr_heart_9, spr_heart_10, spr_heart_11, spr_heart_12, spr_heart_13
    );
instance_create_layer(irandom_range(0, room_width), 0, "Instances", random_sprite);
alarm[0] = 60; // Reset the alarm to spawn the next sprite