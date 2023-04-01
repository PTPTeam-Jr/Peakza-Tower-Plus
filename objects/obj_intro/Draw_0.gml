var _videoData = video_draw();
var _videoStatus = _videoData[0];
if (_videoStatus == 0)
{
	draw_surface_stretched(_videoData[1], 0,0, camera_get_view_width(view_get_camera(0)), camera_get_view_height(view_get_camera(0)));
}
draw_text(64, 64, skip);