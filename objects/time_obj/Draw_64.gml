
if (time < day_length / 2)
{
	draw_sprite(sun_spr,0, display_get_gui_width() - 120, 20);
}
else
{
	draw_sprite(moon_spr,0,display_get_gui_width() - 120,  20);
}

