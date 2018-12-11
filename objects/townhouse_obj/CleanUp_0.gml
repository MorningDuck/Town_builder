for (var i = 0; i < size_x; i += 1)
{
	for (var j = 0; j < size_y; j +=1)
	{
		global.tile_occupied[floor(x/global.tw) + i, floor(y/global.tw) + j] = false;
	}
}

if(occupied)
{
	global.population = max(0, global.population - household_pop);
	global.worker_pop = max(0, global.worker_pop - household_pop);
	for (var i = 0; i < instance_number(workshop_obj); i += 1)
	{
		var ws = instance_find(workshop_obj,i);
		if ws.working
		{
			ws.working = false;
			break;
		}
	}
	global.production = max(0, global.production - 10);
}