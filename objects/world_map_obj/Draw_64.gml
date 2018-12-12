if global.production >= 50 draw_sprite(world_map_icon_spr,0, 30, display_get_gui_height() - 30);

if (showing_map)
{
	draw_sprite(world_map_spr,0,  map_buffer_x,  map_buffer_y)
	draw_sprite(map_house_icon_spr, 0,  map_buffer_x + city1_x,  map_buffer_y + city1_y)
	draw_sprite(map_unknown_spr, 0, map_buffer_x + city2_x , map_buffer_y + city2_y )
	draw_sprite(map_unknown_spr, 0, map_buffer_x + city3_x , map_buffer_y + city3_y )
	
	draw_set_halign(fa_left)
	draw_set_font(info_font);

	switch selection 
	{
		case 0: // default
		draw_text( map_buffer_x + text_buffer_x, map_buffer_y + text_buffer_y1,"Click on a");
		draw_text( map_buffer_x + text_buffer_x, map_buffer_y + text_buffer_y2,"location to");
		draw_text( map_buffer_x + text_buffer_x, map_buffer_y + text_buffer_y3,"learn more");
		break;
		
		case 1: // our city
		draw_text( map_buffer_x + text_buffer_x, map_buffer_y + text_buffer_y1,"Our city!");
		break;
		
		case 2:
		case 3:
		draw_text( map_buffer_x + text_buffer_x, map_buffer_y + text_buffer_y1,"An unknown");
		draw_text( map_buffer_x + text_buffer_x, map_buffer_y + text_buffer_y2,"land");
		break;
	}
}


