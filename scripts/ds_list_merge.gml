// Merges an infinte amount of ds_lists and adds them to a new list
// Every argument must be a instance of ds_list

var new_list = ds_list_create();

for(var list_i = 0; list_i < argument_count; list_i++)
{
    var list = argument[list_i];
    
    for(var i = 0; i < ds_list_size(list); i++)
    {
        ds_list_add(new_list, ds_list_find_value(list, i));
    }
}


return new_list;
