randomize();
arse = random_range(0, 1000);
if arse < 10
	video = video_open("yeah.mp4");
else
	video = video_open("ENDINGPTP.mp4");

video_enable_loop(false);