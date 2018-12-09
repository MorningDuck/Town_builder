// Requires carried_water, max_carry, countdown, destination_x, destination_y, mission_complete, gather_rate

home.residents[home_index].status = "Fetching water";

var nearest_water = instance_nearest(x,y,water_source_obj);

destination_x = nearest_water.x;
destination_y = nearest_water.y;

if (distance_to_point(nearest_water.x,nearest_water.y) < 5)
{
	if (carried_water < max_carry)
	{	
		if (countdown < 1)
		{
			carried_water += 5;
			countdown = 100;
		}
		
		countdown -= 10;
	}
	else mission_complete = true;
}