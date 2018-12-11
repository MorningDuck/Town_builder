draw_sprite(info_dock_spr,0,global.camx, global.camy);

draw_set_font(info_font);
draw_set_halign(fa_right);

draw_text(global.camx + 112, global.camy+12, string(global.population));

draw_text(global.camx + 250, global.camy+12, string(global.food));

draw_text(global.camx + 380, global.camy+11, string(global.production));
