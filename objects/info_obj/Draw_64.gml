
draw_sprite(info_dock_spr,0,0,0);

draw_set_font(HUD_font);
draw_set_halign(fa_right);
draw_set_color(global.light_cream)


draw_text(165, 12, string(global.population));
draw_text(370, 12, string(global.food));
draw_text(565, 12, string(global.production));