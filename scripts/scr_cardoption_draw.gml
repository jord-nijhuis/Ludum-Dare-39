if (active) {
    activateTimer--;
}

if (active && activateTimer <= 0) {
    draw_self();
    draw_set_font(font);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_dkgray);
    if (image_xscale!=0)
    var limit = (sprite_width/image_xscale)*0.9;
    else
    var limit = 1;
        
    draw_text_ext_transformed(x,y, text, 15, limit, image_xscale, image_yscale, 0);

    image_xscale+=xScaleSpeed;
    image_yscale+=yScaleSpeed;
    xScaleSpeed += (1-image_xscale)/16.0;
    yScaleSpeed += (1-image_yscale)/16.0;
}
