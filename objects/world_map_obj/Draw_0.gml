/*
if global.production >= 50 draw_sprite(world_map_icon_spr,0,global.camx + 10, global.camy + global.camh - 10);

if (showing_map)
{
	draw_sprite(world_map_spr,0, global.camx + 50, global.camy + 70)
	draw_sprite(map_house_icon_spr, 0, global.camx + 620, global.camy + 270)
	draw_sprite(map_unknown_spr, 0, global.camx + 550, global.camy + 220)
	draw_sprite(map_unknown_spr, 0, global.camx + 600, global.camy + 350)
	
	draw_set_halign(fa_left)
	draw_set_font(info_font);

	switch selection 
	{
		case 0: // default
		draw_text(global.camx + 100, global.camy + 115,"Click on a");
		draw_text(global.camx + 100, global.camy + 135,"location to");
		draw_text(global.camx + 100, global.camy + 155,"learn more");
		break;
		
		case 1: // our city
		draw_text(global.camx + 100, global.camy + 115,"Our city!");
		break;
		
		case 2:
		case 3:
		draw_text(global.camx + 100, global.camy + 115,"An unknown");
		draw_text(global.camx + 100, global.camy + 135,"land");
		break;
	}
}


*/