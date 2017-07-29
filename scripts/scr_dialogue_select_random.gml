// Returns a single dialogue option, which is randomly selected

// A list of dialouge options to choose from
var dialogue = argument0;

var index = random(ds_list_size(dialogue));

return ds_list_find_value(dialogue, index);
