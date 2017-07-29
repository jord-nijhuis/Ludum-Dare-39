// Merges an infinte amount of ds_lists and adds them to the first list
// You should delete the other lists ds_list_destroy to prevent memory leaks.

if(argument_count == 0)
{
    return undefined;
}

var base_list = argument[0];

for(var list_i = 1; list_i < argument_count; list_i++)
{
    var list = argument[list_i];
    
    for(var i = 0; i < ds_list_size(list); i++)
    {
        ds_list_add(base_list, ds_list_find_value(list, i));
    }
}
