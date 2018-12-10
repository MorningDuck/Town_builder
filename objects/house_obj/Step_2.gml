if (global.daytime)
{
	not_eaten = true;
}

if ((not_eaten) && !(global.daytime))
{ 
	food_stores = max(food_stores - household_pop, 0);
	water = max(water - household_pop, 0);
	fuel = max(fuel - 5, 0);
	not_eaten = false;
}



