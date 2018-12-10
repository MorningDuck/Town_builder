if (placing)
{
	build(workshop_obj);
}

else if (!(working) && (global.production + 10 <= global.worker_pop))
{
	working = true;
	global.production += 10;
}
