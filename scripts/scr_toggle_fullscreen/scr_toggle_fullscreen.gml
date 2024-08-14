// scr_toggle_fullscreen

// Toggle fullscreen mode
if (window_get_fullscreen()) {
    window_set_fullscreen(false);
} else {
    window_set_fullscreen(true);
}