if !audio_is_playing(music)
	audio_play_sound(music, 10, true);
if room == LEVEL1
{
	music = mu_exit;
	if audio_is_playing(the_x_day)
		audio_stop_sound(the_x_day);
}
else if room == xday
{
	music = the_x_day;
	if audio_is_playing(mu_exit)
		audio_stop_sound(mu_exit);
}