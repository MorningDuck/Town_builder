house = instance_nearest(x,y,house_obj);

draw_text(x + 130,y - 15,"Stored food: "+string(house.food_stores));
draw_text(x + 130,y - 30,"Stored fuel: "+string(house.fuel));
draw_text(x + 130,y - 45,"Stored water: "+string(house.water));
for(var i = 0; i < house.household_pop; i += 1)
{
	draw_text(x, y + i *15, house.residents[i].job+" - "+house.residents[i].status);
}