if (time < day_length)
{
	time += 1;
}

else 
{
	time = 0;
	global.day += 1;
}

if (time >= day_length / 2) global.daytime = false;
else global.daytime = true;