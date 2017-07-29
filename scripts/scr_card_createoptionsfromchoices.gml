// create options from a set of choices (ds_list)
var options = ds_list_create();
for(var i=0;i<ds_list_size(argument0);i++) {
    
    var choice = ds_list_find_value(argument0, i);
    ds_list_add(options, scr_createcardoption(choice));
}

return options;
