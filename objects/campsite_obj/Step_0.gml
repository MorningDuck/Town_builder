if ((idle > 0) && (global.daytime))
{
	if ((water < household_pop*2) || (fuel < household_pop*4) || (food_stores < household_pop))
	{
		deploy_scout();
	}
	
	// deploy hunters
}