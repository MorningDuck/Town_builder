draw_sprite(townhouse_icon_spr,0,global.camx + global.camw - 100, global.camy + 150);

draw_sprite(farmhouse_icon_spr,0,global.camx + global.camw - 100, global.camy + 250);

draw_sprite(workshop_icon_spr,0,global.camx + global.camw - 100, global.camy + 350);

draw_sprite(hammer_spr,0,global.camx + global.camw - 100, global.camy + 450);

if (building_roads)
{
	var rx = floor(window_view_mouse_get_x(0) / global.tw) * global.tw;
	var ry = floor(window_view_mouse_get_y(0) / global.tw) * global.tw;
	draw_sprite(green_tile_spr,0,rx,ry);
	draw_text(rx, ry, string(tilemap_get(global.map,rx / global.tw,ry / global.tw)));
}

if destroying
{
	window_set_cursor(cr_none);
	cursor_sprite = hammer_mouse_spr;
}
else 
{
	window_set_cursor(cr_default);
	cursor_sprite = -1;
}


