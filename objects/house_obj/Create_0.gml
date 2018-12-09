max_hunger = 5000;
food_stores = 0;
food_income = 0;
not_eaten = false;

water = 0;
water_income = 0;

fuel = 0;

max_hpop = 10;
household_pop = 1;
idle = household_pop;
mover_cooldown = 60;

info = instance_create_layer(x,y+15,"UI",house_info_obj);

residents[0] = "";
