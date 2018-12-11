for (var i = -2; i <= 2; i += 1)
{
	for (var j = -2; j <=2; j += 1)
	{
		if (i > -2 && i < 2 && j > -2 && j < 2)
		{
			if (position_meeting(x + i * global.tw, y + j * global.tw,farmhouse_obj))
			{
				return true;
			}
		}
		else if (position_meeting(x + i * global.tw, y + j * global.tw,farmhouse_obj))
		{
			if (instance_nearest(x,y,farmhouse_obj).field_level) > 1 return true;
		}
	}
}