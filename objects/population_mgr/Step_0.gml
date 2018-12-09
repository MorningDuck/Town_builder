if ((countdown < 1) && (global.population < 30))
{	
	instance_create_layer(0,room_height/2,"People",immigrant_obj)
	countdown = 200;
}

countdown -= 1;