if ((abs(destination_y -  y) < 4) && (abs(destination_x - x) < 4))
{
	var house = instance_create_layer(destination_x,destination_y,"Objects",camp_obj);
	house.household_pop = pop_size;
	house.idle = pop_size;
	for(var i=0;i<pop_size;i+=1)
	{
		house.residents[i] = instance_create_layer(x,y,"People",person_obj);
		var r = random(5);
		if r > 3 house.residents[i].job = "Child";
	}
	global.population += pop_size;
	instance_destroy();
	
}
