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