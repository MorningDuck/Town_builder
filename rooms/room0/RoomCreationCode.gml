global.map = layer_tilemap_get_id(layer_get_id("Tiles"));
global.tw = tilemap_get_tile_width(global.map);

global.food = 0;
global.population = 0;
global.worker_pop = 0;
global.production = 0;

global.tile_occupied[room_width / global.tw, room_height / global.tw] = 0;

for (var i = 0; i < room_width/global.tw; i += 1)
{
	for (var j = 0; j < room_height/global.tw; j += 1)
	{
		if (place_meeting(i*global.tw,j*global.tw,tree_obj))
		{
			global.tile_occupied[i,j] = true;
		}
		else global.tile_occupied[i,j] = false;
	}
}