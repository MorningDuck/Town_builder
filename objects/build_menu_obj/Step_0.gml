mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);

// townhouse button
if ((mx > bg_x + button_right_x) 
	&& (mx < bg_x + button_right_x + 70) 
	&& (my > bg_y + button1_y) 
	&& (my < bg_y + button1_y + 70))
{
	if ((mouse_check_button(mb_left)) && !(global.building))
	{
		global.building = true;
		instance_create_layer(mouse_x,mouse_y,"Objects",townhouse_obj);
		building_roads = false;
		destroying = false;
	}
}

// farmhouse button
else if ((mx > bg_x + button_left_x) 
	&& (mx < bg_x + button_left_x + 70) 
	&& (my > bg_y + button1_y) 
	&& (my < bg_y + button1_y + 70))
{
	if (mouse_check_button(mb_left)) && !(global.building)
	{
		global.building = true;
		instance_create_layer(mouse_x,mouse_y,"Objects",farmhouse_obj);
		building_roads = false;
		destroying = false;
	}
}

//workshop button
else if ((mx > bg_x + button_left_x) 
	&& (mx < bg_x + button_left_x + 70) 
	&& (my > bg_y + button2_y) 
	&& (my < bg_y + button2_y + 70))
{
	if (mouse_check_button(mb_left)) && !(global.building)
	{
		global.building = true;
		instance_create_layer(mouse_x,mouse_y,"Objects",workshop_obj);
		building_roads = false;
		destroying = false;
	}
}

//destroy button
else if ((mx > bg_x + button_right_x) 
	&& (mx < bg_x + button_right_x  + 70) 
	&& (my > bg_y + button3_y) 
	&& (my < bg_y + button3_y + 70))
{
	if (mouse_check_button(mb_left)) && !(global.building)
	{
		destroying = true;
		building_roads = false;
	}
}

//roads button
else if ((mx > bg_x + button_left_x) 
	&& (mx < bg_x + button_left_x + 70) 
	&& (my > bg_y + button3_y) 
	&& (my < bg_y + button3_y  + 70))
{
	if (mouse_check_button(mb_left)) && !(global.building)
	{
		building_roads = true;
		destroying = false;
	}
}
	
if (destroying)
{
	if mouse_check_button(mb_left)
	{
		if mouse_check_button_pressed(mb_left)
		{
			position_destroy(mouse_x, mouse_y);
		}
	}
	else if mouse_check_button(mb_right) destroying = false;
}
	

if (building_roads)
{
	if ((mouse_check_button(mb_left)) && mx < bg_x)
	{
		var rx = (window_view_mouse_get_x(0) / global.tw);
		var ry = (window_view_mouse_get_y(0) / global.tw);
		if (tile_get_index(tilemap_get(global.map,rx,ry)) == 1)
		{
			var data = tile_set_index(tilemap_get(global.map,rx,ry),4);
			tilemap_set(global.map, data, rx, ry);
			
			if (tile_get_index(tilemap_get(global.map,rx,ry-1) == 4) || (tile_get_index(tilemap_get(global.map,rx,ry+1) == 4))
				|| tile_get_index(tilemap_get(global.map,rx,ry-1) == 5) || (tile_get_index(tilemap_get(global.map,rx,ry+1) == 5)))
			{
				var data = tile_set_index(tilemap_get(global.map,rx,ry),5);
				tilemap_set(global.map, data, rx, ry);
			}
		}
	}
	
	else if (mouse_check_button(mb_right)) building_roads = false;
}