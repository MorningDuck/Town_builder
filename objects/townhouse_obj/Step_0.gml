if (placing)
{
	build(townhouse_obj);
}

else if (!(occupied) && global.population + 5 <= global.food)
{
	occupied = true;
	household_pop = 5;
	global.population += household_pop;
	global.worker_pop += household_pop;
}

if (occupied && global.population > global.food) 
{
	occupied = false;
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