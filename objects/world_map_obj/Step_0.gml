mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);

if ((global.production >= 50) &&
	(mx > 30)
	&& (mx < 150)
	&& (my > display_get_gui_height() - 110)
	&& (my < display_get_gui_height() - 30))
{
	
	if (mouse_check_button(mb_left)) 
	{
		showing_map = true;
	}
}

if showing_map && mouse_check_button(mb_right) showing_map = false;

if !showing_map selection = 0;

if showing_map
{
	if ((mx > map_buffer_x + city1_x) 
		&& (mx <  map_buffer_x + city1_x + 50) 
		&& (my >  map_buffer_y + city1_y) 
		&& (my <  map_buffer_y + city1_y + 50))
	{
		if mouse_check_button(mb_left) selection = 1; // "Our colony!"
	}
	
	else if ((mx > map_buffer_x + city2_x) 
		&& (mx <  map_buffer_x + city2_x + 50) 
		&& (my >  map_buffer_y + city2_y) 
		&& (my <  map_buffer_y + city2_y + 50))
	{
		if mouse_check_button(mb_left) selection = 2; // Location 1
	}
	
	else if ((mx > map_buffer_x + city3_x) 
		&& (mx <  map_buffer_x + city3_x + 50) 
		&& (my >  map_buffer_y + city3_y) 
		&& (my <  map_buffer_y + city3_y + 50))
	{
		if mouse_check_button(mb_left) selection = 3; // Location 2
	}
	
	else if ((mx > map_buffer_x + explore_button_x) 
		&& (mx <  map_buffer_x + explore_button_x + 129) 
		&& (my >  map_buffer_y + explore_button_y) 
		&& (my <  map_buffer_y + explore_button_y + 30)
		&& (selection == 2))
	{
		if mouse_check_button(mb_left) 
		{
			room_goto(colony2);
		}
	}
	
	else if ((mx > map_buffer_x + explore_button_x) 
		&& (mx <  map_buffer_x + explore_button_x + 129) 
		&& (my >  map_buffer_y + explore_button_y) 
		&& (my <  map_buffer_y + explore_button_y + 30)
		&& (selection == 3))
	{
		if mouse_check_button(mb_left) 
		{
			room_goto(colony1);
		}
	}
}