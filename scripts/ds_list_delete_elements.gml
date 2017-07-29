
list = argument0;

list_elements = argument1;

for(var i = 0; i < ds_list_size(list_elements); i++)
{
    var value = ds_list_find_value(list_elements, i);
    
    var index = ds_list_find_index(list, value);
    
    if(index == -1)
    {
        continue;
    }
    
    ds_list_delete(list, index);
}

return list;
