camx = camera_get_view_x(view_camera[0]);
camy = camera_get_view_y(view_camera[0]);

camw = camera_get_view_width(view_camera[0]);

if (time < day_length / 2)
{
	draw_sprite(sun_spr,0,camx + camw - 50, camy + 50);
}
else
{
	draw_sprite(moon_spr,0,camx + camw - 50, camy + 50);
}

//draw_text(camx + camw - 100, camy + 100,string(time) )