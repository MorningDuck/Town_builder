// Requires carried_fuel, max_carry, countdown, destination_x, destination_y, mission_complete

home.residents[home_index].status = "Chopping firewood";

var nearest_fuel = instance_nearest(x,y,wood_source_obj);

destination_x = nearest_fuel.x;
destination_y = nearest_fuel.y;

if (distance_to_point(nearest_fuel.x,nearest_fuel.y) < 5)
{
	if (carried_fuel < max_carry)
	{	
		if (countdown < 1)
		{
			carried_fuel += 2;
			countdown = 100;
		}
		
		countdown -= 10;
	}
	else mission_complete = true;
}