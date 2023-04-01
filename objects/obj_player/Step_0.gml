/// @description ASS

if !ground
{
	vspeed += 0.5;
}

if place_meeting(x,y+sign(vspeed),obj_wall)
{
	vspeed = 0;
	ground = true;
}
else
{
	ground = false;
}
if place_meeting(x+sign(hspeed),y,obj_wall) && state == 0
{
	hspeed = 0;
}

if state == 0
{
	if keyboard_check(vk_left)
	{
		hspeed = -6;
		image_xscale = -1;
	}
	if keyboard_check(vk_right)
	{
		hspeed = 6;
		image_xscale = 1;
	}
	if !keyboard_check(vk_left) && !keyboard_check(vk_right)
	{
		hspeed = 0;
	}
	if ground
	{
		if hspeed == 0
		{
			sprite_index = spr_pepino_idle;
		}
		if hspeed != 0
		{
			sprite_index = spr_pepino_walk;
		}
		if keyboard_check_pressed(vk_space)
		{
			vspeed = -14;
			sprite_index = spr_pepino_jump;
			image_index = 0;
		}
	}
	else
	{
		if sprite_index != spr_pepino_jump
		{
			sprite_index = spr_pepino_fall;
		}
		if sprite_index == spr_pepino_jump && floor(image_index) == image_number - 1
		{
			sprite_index = spr_pepino_fall;
		}
	}
	if keyboard_check(vk_shift)
	{
		state = 1;
		sprite_index = spr_pepino_mach2;
		hspeed = 8 * image_xscale;
	}
}
else if state == 1
{
	if sprite_index == spr_pepino_mach2
	{
		if abs(hspeed) < 14
		{
			if image_xscale == 1
				hspeed += 0.2;
			if image_xscale == -1
				hspeed -= 0.2;
		}
		if abs(hspeed) >= 14
		{
			sprite_index = spr_pepino_mach3;
		}
	}
	if !keyboard_check(vk_shift)
	{
		state = 0;
	}
}
else if state == 2
{
	hspeed = 0;
	vspeed = 0;
	if floor(image_index) == image_number - 1
	{
		state = prevstate;
	}
}
else if state == 69
{
	mask_index = nothing;
	if y > room_height + 800
		game_restart();
}

if x < 0 || x > room_width || y < 0 || y > room_height && state != 69
{
	x = xstart;
	y = ystart;
}
if keyboard_check_pressed(ord("C")) && state == 0 || keyboard_check_pressed(ord("C")) && state == 1 {
	prevstate = state;
	sprite_index = spr_pepino_throwitback;
	image_index = 0;
	audio_play_sound(fartattack2, 10, 0);
	state = 2;
}