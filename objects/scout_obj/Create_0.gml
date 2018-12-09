// variables for movement
destination_x = x
destination_y = y;
current_speed = 3;

home = instance_position(x,y,house_obj);

//info = instance_create_layer(x,y,"UI",mover_info_obj);

// variables for gathering resources
mission = "None";
food = 0;
carried_water = 0;
carried_fuel = 0;
max_carry = 20;
countdown = 100;
mission_complete = false;

// index in the residents[] array in the home building
home_index = 0;


