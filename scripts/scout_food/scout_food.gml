// Requires food, max_carry, countdown, destination_x, destination_y, mission_complete

home.residents[home_index].status = "Finding food";

var nearest_food = instance_nearest(x,y,bush_obj);

destination_x = nearest_food.x;
destination_y = nearest_food.y;

if (distance_to_point(nearest_food.x,nearest_food.y) < 5)
{
	if (food < max_carry)
	{	
		if (countdown < 1)
		{
			food += 1;
			countdown = 100;
		}
		
		countdown -= 1;
	}
	else mission_complete = true;
}