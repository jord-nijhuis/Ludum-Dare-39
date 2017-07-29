hspeed += (xTarget - x) / 16.0;
vspeed += (yTarget - y) / 16.0;

hspeed/=1.4;
vspeed/=1.4;

textObject.x = x;
textObject.y = y - 128;

if (scr_draw_text_is_finished(textObject)) {

    scr_activatecard(self);
}

for(var i=0;i<ds_list_size(options);i++) {
    var option = ds_list_find_value(options, i);
    
    var offset = 0;
    if (ds_list_size(options)>1) {
        offset = (-ds_list_size(options)*32) + i*64;
    }
    
    option.x = x;
    option.y = y + 128 + offset;
}

if (y<-300) {
    instance_destroy();
    for(var i=0;i<ds_list_size(options);i++) {
        var option = ds_list_find_value(options, i);

        with(option) {
            instance_destroy();
        }
    }
}
