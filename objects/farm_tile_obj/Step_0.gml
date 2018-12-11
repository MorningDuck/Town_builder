if !(in_farmhouse_range())
{
	countdown -= 1;
}

if countdown < 1 instance_destroy()