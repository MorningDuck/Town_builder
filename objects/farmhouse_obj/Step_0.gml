if (placing)
{
	build(farmhouse_obj);
}

else if !(occupied)
{
	occupied = true;
	household_pop = 5;
	global.population += household_pop;
}

else if ((field_level == 0) && (distance_to_object(instance_nearest(x,y,water_source_obj)) < global.tw * 20) && (occupied))
{
	field_level = 1;
	for (var i = -1; i <= 2; i += 1)
	{
		for (var j = -1; j <= 2; j += 1)
		{
			if (!(global.tile_occupied[x / global.tw + i, y / global.tw + j]) 
				&& (tile_get_index(tilemap_get(global.map,x / global.tw + i, y / global.tw + j)) == 1))
			{
				instance_create_layer(x + i*global.tw, y + j*global.tw, "Objects", farm_tile_obj);
				global.tile_occupied[x / global.tw + i, y / global.tw + j] = true;
				global.food += 1; // bug produces the wrong food amount
			}
		}
	}
}

else if ((field_level == 1) && (global.production >= 50) && (occupied))
{
	field_level = 2;
	for (var i = -2; i <= 3; i += 1)
	{
		for (var j = -2; j <= 3; j += 1)
		{
			if (!(global.tile_occupied[x / global.tw + i, y / global.tw + j]) 
				&& (tile_get_index(tilemap_get(global.map,x / global.tw + i, y / global.tw + j)) == 1))
			{
				instance_create_layer(x + i*global.tw, y + j*global.tw, "Objects", farm_tile_obj);
				global.tile_occupied[x / global.tw + i, y / global.tw + j] = true;
				global.food += 1; // bug produces the wrong food amount
			}
		}
	}
}