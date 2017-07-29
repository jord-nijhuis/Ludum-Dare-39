// Selects all the dialogue options that are present in the used_dialogue parameter

// A ds_list of dialogues to chooice from
var dialogue = argument0;

// A ds_list of used dialogues that should not be used again
var used_dialogue = argument1;

var new_list = ds_list_create();

for(var i = 0; i < ds_list_size(dialogue); i++)
{
    var map = ds_list_find_value(dialogue, i);
    
    if(ds_list_find_index(used_dialogue, map) != -1)
    {
        continue;
    }
    
    ds_list_add(new_list, map);
}

return new_list;
