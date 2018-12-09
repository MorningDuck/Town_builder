global.map_version = 0;
map_version_prev = 0;

global.map = layer_tilemap_get_id(layer_get_id("Tiles"));
global.tw = tilemap_get_tile_width(global.map);

node_frequency = 5;

node_x_count = room_width / (node_frequency * global.tw );
node_y_count = room_height / (node_frequency * global.tw );

map_nodes[0, 0] = 0;

for (var i = 0; i < node_x_count; i += 1)
{
	for (var j = 0; j < node_y_count; j += 1)
	{
		map_nodes[i,j] = ;
	}
}