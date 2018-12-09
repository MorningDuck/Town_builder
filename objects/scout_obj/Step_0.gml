
if (mission_complete)
{
	destination_x = home.x;
	destination_y = home.y;
}

if ((place_meeting(x,y,home)) && ((mission_complete) || !(global.daytime)))
{
	home.food_stores += food;
	home.water += carried_water;
	home.fuel += carried_fuel;
	home.idle += 1;
	home.residents[home_index].status = "Idle";
	instance_destroy();
}


// Requires food, max_carry, countdown, destination_x, destination_y, mission_complete

if ((global.daytime) && !(mission_complete))
{
	if (home.water < home.household_pop * 2)
	{
		fetch_water();
	}
	
	else if (home.fuel < home.household_pop*4)
	{
		fetch_fuel();
	}

	else if (home.food_stores < home.household_pop * 3)
	{
		scout_food();
	}
}

else
{
	destination_x = home.x;
	destination_y = home.y;
}

