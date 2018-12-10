


if (time < day_length / 2)
{
	draw_sprite(sun_spr,0,global.camx + global.camw - 120, global.camy + 20);
}
else
{
	draw_sprite(moon_spr,0,global.camx + global.camw - 120, global.camy + 20);
}

//draw_text(global.camx + global.camw - 100, global.camy + 100,string(time) )