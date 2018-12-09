good_site = false;


dirt_tile = 1;
tries = 0;

while !(good_site)
{
	// could cause performance issues
	tempx = irandom(room_width);
	tempy = irandom(room_height);
	
	if (
				(distance_to_object(wall_obj) > global.tw) 
			&& (distance_to_object(water_source_obj) < global.tw * 8) 
			&& (distance_to_object(wood_source_obj) < global.tw * 12)
			&& (tile_get_index(tilemap_get(global.map,tempx / global.tw, tempy / global.tw)) == dirt_tile)
			)
	{
		good_site = true;
	}
	
	else if (
			   (distance_to_object(wall_obj) > global.tw) 
			&& (distance_to_object(water_source_obj) < global.tw * 8) 
			&& (tile_get_index(tilemap_get(global.map,tempx / global.tw, tempy / global.tw)) == dirt_tile)
			&& (tries > 3)
			)
	{
		good_site = true;
	}
	
	tries += 1;
	
}

destination_x = tempx;
destination_y = tempy;