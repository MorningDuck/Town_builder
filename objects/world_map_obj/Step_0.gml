mx = window_view_mouse_get_x(0);
my = window_view_mouse_get_y(0);

if ((global.production >= 50)
	&& (mx > global.camx + 10) 
	&& (mx < global.camx + 130) 
	&& (my > global.camy + global.camh - 90) 
	&& (my < global.camy + global.camh - 10))
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
	if ((mx > global.camx + 600) 
	&& (mx < global.camx + 650) 
	&& (my > global.camy + 270) 
	&& (my < global.camy + 320))
	{
		if mouse_check_button(mb_left) selection = 1; // "Our colony!"
	}
	
	else if ((mx > global.camx + 550) 
	&& (mx < global.camx + 600) 
	&& (my > global.camy + 220) 
	&& (my < global.camy + 270))
	{
		if mouse_check_button(mb_left) selection = 2; // Location 1
	}
	
	else if ((mx > global.camx + 600) 
	&& (mx < global.camx + 650) 
	&& (my > global.camy + 350) 
	&& (my < global.camy + 400))
	{
		if mouse_check_button(mb_left) selection = 3; // Location 2
	}
}