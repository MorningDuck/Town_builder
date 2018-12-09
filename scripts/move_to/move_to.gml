dirt_tile = 1;
rocks_tile = 3;

if (x < destination_x) 
{
	x += current_speed;	
	
}

if (x > destination_x) 
{
	
	x -= current_speed;
}

if (y < destination_y) 
{
	
	y += current_speed;
	
}

if (y > destination_y) 
{
	y -= current_speed;
}
