var random_sprite = choose(obj_blue, obj_yellow, obj_pink, obj_red, obj_brown, obj_white);
instance_create_layer(irandom_range(0, room_width), 0, "Instances", random_sprite);
alarm[0] = 30; // Reset the alarm to spawn the next sprite