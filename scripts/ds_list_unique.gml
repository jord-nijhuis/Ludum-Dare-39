// Ths function removes all duplicate values in a list

// A ds_list instance
var list = argument0;

var new_list = ds_list_create();
ds_list_copy(new_list, list);

var values = ds_list_create();

for(var i = 0; i < ds_list_size(list); i++)
{
    var value = ds_list_find_value(list, i);
    
    // The value was in our values list => We have already seen it   
    if(ds_list_find_index(values, value) != -1)
    {
        // Remove one of the values from the value list
        ds_list_delete(new_list, ds_list_find_index(new_list, value));
    }
    else
    {
        // New value => add it
        ds_list_add(values, value);
    }
}

ds_list_destroy(values);
return new_list;
