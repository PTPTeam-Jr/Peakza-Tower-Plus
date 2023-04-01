if keyboard_check_pressed(vk_f1) && fullscreen == 0
	fullscreen = 1;
else if keyboard_check_pressed(vk_f1) && fullscreen == 1
	fullscreen = 0;

if fullscreen == 1
	window_set_fullscreen(true);
else if fullscreen == 0
	window_set_fullscreen(false);