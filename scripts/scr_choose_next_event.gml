
var possible_next_events = argument0;

var choices = ds_list_create();

for(i = 0; i < ds_list_size(possible_next_events); i++)
{
    var next_event = ds_list_find_value(possible_next_events, i);
    var weight = ds_map_find_value(next_event, "weight");
    var index = ds_map_find_value(next_event, "event");
    
    for(wi = 0; wi < weight; wi++)
    {
        ds_list_add(choices, index);
    }
}

var chosen_index = round(random(ds_list_size(choices) - 1));
var _id = ds_list_find_value(choices, chosen_index);

ds_list_destroy(choices);

return _id;
