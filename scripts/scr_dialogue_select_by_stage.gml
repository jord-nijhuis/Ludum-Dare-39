// This function only selects dialogue options based on the current stage of the game
// It returns a list of dialogues that are in the provided state.

// A list with all the dialogues
var dialogue = argument0;

// The stage to match against
var stage = argument1;

var new_list = ds_list_create();

for(var i = 0; i < ds_list_size(dialogue); i++)
{
    var map = ds_list_find_value(dialogue, i);
    
    if(ds_map_find_value(map, "stage") != stage)
    {
        continue;
    }
    
    ds_list_add(new_list, map);
}

return new_list;
