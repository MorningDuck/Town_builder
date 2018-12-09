
if ((idle > 0) && (global.daytime))
{
	if ((food_stores  < household_pop*3) || (water < household_pop*2) || (fuel < household_pop*4))
	{
		deploy_scout();
	}
}

if ((water > household_pop * 2) && (fuel > household_pop * 2))
{
	new_house = instance_create_layer(x,y,"Objects",campsite_obj)
	upgrade_house();
	instance_destroy();
}
	
	