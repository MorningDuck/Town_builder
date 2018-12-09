new_house.not_eaten = not_eaten;
	
new_house.food_stores = food_stores;
new_house.food_income = food_income;
	
new_house.water = water;
new_house.water_income = water_income;

new_house.fuel = fuel;

new_house.household_pop = household_pop;
new_house.idle = idle;
//mover_cooldown = 60;

instance_destroy(new_house.info);

new_house.residents = residents;
for (var i = 0; i < array_length_1d(residents); i += 1)
{
	if residents[i].job == "Scout" residents[i].walker.home = new_house;
}