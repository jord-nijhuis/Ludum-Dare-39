// This function only selects dialogue options where the requires_triggers are statisfied
// It returns a ds_list with dialogue options.

// A ds_list with all the dialogues
var dialogue = argument0;

// A ds_list with all the triggers that have been added
var triggers = argument1;

var new_list = ds_list_create();

for(var dialogue_i = 0; dialogue_i < ds_list_size(dialogue); dialogue_i++)
{
    var map = ds_list_find_value(dialogue, dialogue_i);
    
    var dialouge_triggers = ds_map_find_value(map, "requires_triggers");
    var should_add = true;
    
    // There are triggers specified
    if(!is_undefined(dialouge_triggers))
    {
        for(var trigger_i = 0; ds_list_size(dialouge_triggers); trigger_i++)
        {
            var trigger = ds_list_find_value(dialouge_triggers, trigger_i);
            
            // The trigger is not in the list with triggers that are present => Ignore this option
            if(ds_list_find_index(triggers, trigger) == -1)
            {
                should_add = false;
                break;
            }
        }
    }
    
    if(should_add)
    { 
        ds_list_add(new_list, map);
    }
}

return new_list;
