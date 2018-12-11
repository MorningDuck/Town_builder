for (var i = 0; i < size_x; i += 1)
{
	for (var j = 0; j < size_y; j +=1)
	{
		global.tile_occupied[floor(x/global.tw) + i, floor(y/global.tw) + j] = false;
	}
}