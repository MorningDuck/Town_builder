//Requires: residents[], food_income, household_pop, idle, water_income
for (var i = 0; i < array_length_1d(residents); i += 1)
{
	resident = residents[i];
	
	if ((resident.job == "Unemployed") && ((food_income < household_pop) || (water_income < household_pop)))
	{
		resident.job = "Scout";
		var scout = instance_create_layer(x,y,"People",scout_obj);
		scout.home_index = i;
		resident.walker = scout;
		if (water_income < household_pop) water_income += 10;
		else food_income += 3;
		idle -= 1;
	}
	
	else if ((resident.job == "Scout") && (resident.status == "Idle"))
	{
		var scout = instance_create_layer(x,y,"People",scout_obj);
		scout.home_index = i;
		resident.walker = scout;
		idle -= 1;
		
	}
}