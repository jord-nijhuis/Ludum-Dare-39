var orange = make_colour_hsv(35,255,230);

// Bar:
draw_sprite(spr_guibar, 0, 0,0);

// Power:

var factor = self.tr_power_display / 100.0;
var offset = (-60 + 120*factor) * 4;
draw_sprite(spr_powerneedle, 0, room_width / 2 + offset, 100);


// Money:

draw_set_halign(fa_left);

if (self.tr_money_display>=0){
    draw_set_colour(orange);
}else{
    draw_set_colour(c_red);
}

draw_set_font(fnt_gui);
draw_set_valign(fa_top);
draw_text(10*4, 13*4, "$ "+string(self.tr_money_display));

draw_set_colour(c_black);

// Popularity
var popFactor = global.tr_popularity/100;
draw_sprite(spr_gui_popularity, 1, 197*4, 11*4);
draw_sprite_part(spr_gui_popularity, 0, 0, 0, popFactor*204, 44, 197*4  , 11*4);

// Bottom bar

// Stage
draw_set_colour(orange);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

draw_sprite(spr_guibar_bot, 0, 0,768);
draw_text(33*4, room_height-12*4, string(global.day)+" Days");
draw_text(room_width-33*4, room_height-12*4, scr_get_readable_stage(scr_get_stage(global.day))); 
