x += (xTarget - x) / 5.0;
y += (yTarget - y) / 5.0;

textObject.x = x;
textObject.y = y;

for(var i=0;i<ds_list_size(options);i++) {
    var option = ds_list_find_value(options, i);
    
    var offset = 0;
    if (ds_list_size(options)>1)
    offset = -200 + (i * (400/(ds_list_size(options)-1)));
    
    option.x = x + offset;
    option.y = y + 200;
}
