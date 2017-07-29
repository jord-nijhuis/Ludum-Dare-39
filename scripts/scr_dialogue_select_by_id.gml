// Returns a dialogue option with the given ID or undefined if the dialogue was not found

// A ds_list with all the dialogues
var dialogue = argument0;

// The dialogue id that was set in the json file
var _id = argument1;

if(is_undefined(_id))
{
    return undefined;
}

for(i = 0; i < ds_list_size(dialogue); i++)
{
    var option = ds_list_find_value(dialogue, i);
    
    if(ds_map_find_value(option, "id") == _id)
    {
        return option;
    }
}

return undefined;
