dirt_tile = 1;
rocks_tile = 3;

if (x < destination_x) 
{
	// follow stored path using node_next
	
}

if (x > destination_x) 
{
	if (tile_get_index(tilemap_get(global.map,(x-global.tw) / global.tw,y / global.tw)) == dirt_tile)
	{
		x -= current_speed;
	}
	else if (tile_get_index(tilemap_get(global.map,(x-global.tw) / global.tw,y / global.tw)) == rocks_tile)
	{
		x -= current_speed - 1;
	}
	else y -= current_speed;
}

if (y < destination_y) 
{
	if (tile_get_index(tilemap_get(global.map,x / global.tw, (y+current_speed) / global.tw )) == dirt_tile)
	{
		y += current_speed;
	}
}

if (y > destination_y) 
{
	if (tile_get_index(tilemap_get(global.map,x / global.tw, (y-current_speed) / global.tw )) == dirt_tile)
	{
		y -= current_speed;
	}
}