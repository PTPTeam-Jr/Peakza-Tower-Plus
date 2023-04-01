x = lerp(x, obj_player.x, 0.1);
y = lerp(y, obj_player.y, 0.1);
if !audio_is_playing(music)
	audio_play_sound(music, 10, true);