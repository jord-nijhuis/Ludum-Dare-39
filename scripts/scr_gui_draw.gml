// Power:

draw_set_font(fnt_gui);
draw_set_color(c_black);
draw_sprite(spr_gui_powermeter_background, 0, room_width / 2, 64);

var sw = sprite_get_width(spr_gui_powermeter_foreground);
var sh = sprite_get_height(spr_gui_powermeter_background);
var factor = self.tr_power_display / 100.0;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_sprite_part(spr_gui_powermeter_foreground, 0, 0, 0, factor*sw, sh, room_width / 2 - sw/2, 64 - sh/2);
draw_text(room_width / 2, 64, "Power");

// Money:

draw_set_halign(fa_left);
if (self.tr_money_display>=0)
draw_set_colour(c_black);
else
draw_set_colour(c_red);

draw_text(32, 64, "Wealth: $"+string(self.tr_money_display));

// Stage
draw_text(32, 80, "Day: "+string(global.day));
draw_text(32, 96, "Stage: "+scr_get_readable_stage(scr_get_stage(global.day)));

// Popularity
draw_sprite_ext(spr_gui_popularity, 0, room_width - 150, 64, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_gui_popularity, 1, room_width - 150, 64, 1, 1, 0, c_white, global.tr_popularity / 100.0);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text(room_width -150, 64, string(global.tr_popularity)+"%");
