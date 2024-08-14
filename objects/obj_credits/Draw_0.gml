// Draw event of obj_credits

// Set the font and alignment
draw_set_font(fnt_credits);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw each line of the credits
for (var i = 0; i < array_length(credits); i++) {
    draw_text(room_width / 2, credits_y + (i * line_spacing), credits[i]);
}