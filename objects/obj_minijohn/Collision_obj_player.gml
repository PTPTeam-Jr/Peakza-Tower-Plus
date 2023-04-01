if obj_player.state == 1
{
	instance_destroy();
}
else {
	obj_player.state = 69;
	obj_player.sprite_index = spr_pepino_dead;
	obj_player.y -= 6;
	obj_player.ground = false;
	obj_player.vspeed = -18;
	obj_player.hspeed = -4;
	audio_play_sound(choose(luigioscream, luigioscream2, scream_R1, screamR2, screamR3, screamR4), 10, false);
}