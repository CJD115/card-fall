// scr_add_random_color
function add_random_color() {
    var colors = [spr_blue, spr_green, spr_yellow, spr_pink];
    var random_color = colors[irandom(array_length(colors) - 1)];
    array_push(obj_controller.color_order, random_color);
}