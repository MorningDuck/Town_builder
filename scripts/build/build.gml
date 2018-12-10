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
		if (global.tile_occupied[x / global.tw + i, y / global.tw + j]) free_space = false;
	}
}
	
if ((mouse_check_button_released(mb_left)) && (build_cooldown < 1) && free_space)
{
	placing = false;
	instance_create_layer(x,y,"Objects",building_id);
	for (var i = 0; i < size_x; i += 1)
	{
		for (var j = 0; j < size_y; j += 1)
		{
			global.tile_occupied[x / global.tw + i, y / global.tw + j] = true;
		}
	}
}
else if (mouse_check_button_pressed(mb_right))
{
	global.building = false;
	instance_destroy();
}