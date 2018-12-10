mx = window_view_mouse_get_x(0);
my = window_view_mouse_get_y(0);

// press 1st button (townhouse)
if ((mx > global.camx + global.camw - 100) 
	&& (mx < global.camx + global.camw - 20) 
	&& (my > global.camy + 150) 
	&& (my < global.camy + 230))
{
	if ((mouse_check_button(mb_left)) && !(global.building))
	{
		global.building = true;
		instance_create_layer(mouse_x,mouse_y,"Objects",townhouse_obj);
		building_roads = false;
	}
}

// 2nd button
else if ((mx > global.camx + global.camw - 100) 
	&& (mx < global.camx + global.camw - 20) 
	&& (my > global.camy + 250) 
	&& (my < global.camy + 330))
{
	if (mouse_check_button(mb_left)) && !(global.building)
	{
		global.building = true;
		instance_create_layer(mouse_x,mouse_y,"Objects",farmhouse_obj);
		building_roads = false;
	}
}

//3rd button
else if ((mx > global.camx + global.camw - 100) 
	&& (mx < global.camx + global.camw - 20) 
	&& (my > global.camy + 350) 
	&& (my < global.camy + 430))
{
	if (mouse_check_button(mb_left)) && !(global.building)
	{
		global.building = true;
		instance_create_layer(mouse_x,mouse_y,"Objects",workshop_obj);
		building_roads = false;
	}
}

//4th button
else if ((mx > global.camx + global.camw - 100) 
	&& (mx < global.camx + global.camw - 20) 
	&& (my > global.camy + 450) 
	&& (my < global.camy + 530))
{
	if (mouse_check_button(mb_left))
	{
		building_roads = true;
	}
}

if (building_roads)
{
	if ((mouse_check_button(mb_left)) && mx < global.camx + global.camw - 100)
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