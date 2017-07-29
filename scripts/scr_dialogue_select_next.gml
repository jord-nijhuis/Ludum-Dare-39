// Selects a single dialogue option that matches all the criteria
// Note that this uses the global variables that are declared in obj_initgame



if(ds_list_size(global.used_choices) > 0)
{
    var last_choice = ds_list_find_value(global.used_choices, ds_list_size(global.used_choices) - 1);
    
    var next_events = ds_map_find_value(last_choice, "next_events");
       
    // The last choice has specified a mext event, choose one of those    
    if(!is_undefined(next_events))
    {
        var _id = scr_choose_next_event(next_events);
        var next = scr_dialogue_select_by_id(global.dialogue, _id);
        
        if(is_undefined(next))
        {
            show_error("Unknown ID: " + _id, true);   
        }
        
        return next;
    }
}

var dialogue = scr_dialogue_select_by_stage(global.dialogue, scr_get_stage(global.day));
dialogue = scr_dialogue_select_without_unstatisfied_triggers(dialogue, global.triggers);
dialogue = scr_dialogue_select_new(dialogue, global.used_dialogue);


return scr_dialogue_select_random(dialogue);
