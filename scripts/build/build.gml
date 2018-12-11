/// @function build(building_id)

var building_id = argument0;

build_cooldown -= 1;
x = floor(window_view_mouse_get_x(0) / global.tw) * global.tw;
y = floor(window_view_mouse_get_y(0) / global.tw) * global.tw;

var free_space = true;

for (var i = 0;  i < size_x; i += 1)
{
	for (var j = 0; j < size_y; j += 1)
	{
		if (x / global.tw + i >= 0) 
				&& (x / global.tw + i < room_width / global.tw) 
				&& (y / global.tw + j >= 0) 
				&& (y / global.tw + j < room_height / global.tw)
		{
			if (global.tile_occupied[x / global.tw + i, y / global.tw + j]) free_space = false;
		}
	}
}
	
if ((mouse_check_button_released(mb_left)) && (build_cooldown < 1) && free_space && x > 0 && y > 0 && x < room_width && y < room_height)
{
	placing = false;
	instance_create_layer(x,y,"Objects",building_id);
	for (var i = 0; i < size_x; i += 1)
	{
		
		for (var j = 0; j < size_y; j += 1)
		{
			if (x / global.tw + i >= 0) 
				&& (x / global.tw + i < room_width / global.tw) 
				&& (y / global.tw + j >= 0) 
				&& (y / global.tw + j < room_height / global.tw)
			{
				global.tile_occupied[x / global.tw + i, y / global.tw + j] = true;
			}
		}
	}
}
else if (mouse_check_button_pressed(mb_right))
{
	global.building = false;
	instance_destroy();
}