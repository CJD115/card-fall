// Step event of obj_yellow_square
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    x -= move_speed;
}

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    x += move_speed;
}

// Ensure the object stays within the room bounds
if (x < 0) {
    x = 0;
}

if (x > room_width - sprite_width) {
    x = room_width - sprite_width;
}