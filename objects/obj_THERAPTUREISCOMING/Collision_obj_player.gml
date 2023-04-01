if caught == 0
{
	audio_play_sound(choose(luigioscream, luigioscream2, scream_R1, screamR2, screamR3, screamR4), 10, false);
	alarm[0] = 10;
	caught = 1;
}