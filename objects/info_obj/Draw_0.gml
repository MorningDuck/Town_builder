draw_sprite(info_dock_spr,0,global.camx, global.camy);

draw_text(global.camx + 45, global.camy+10, string(global.population));

draw_text(global.camx + 185, global.camy+10, string(global.food));

draw_text(global.camx + 315, global.camy+10, string(global.production));
