if (active) {
    activateTimer--;
}

if (active && activateTimer <= 0) {
    draw_self();
    draw_set_font(fnt_card);
    draw_set_color(c_black);
    draw_text_transformed(x,y, text, image_xscale, image_yscale, 0);
    image_xscale+=xScaleSpeed;
    image_yscale+=yScaleSpeed;
    xScaleSpeed += (1-image_xscale)/16.0;
    yScaleSpeed += (1-image_yscale)/16.0;
}
