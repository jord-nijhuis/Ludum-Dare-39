
var name = string_lower(argument0);
var all_sounds = scr_phrases_select_all()
var sounds = ds_map_find_value(all_sounds, name);

ds_map_destroy(all_sounds);

if(is_undefined(sounds))
{
    return undefined;
}

var index = round(random(array_length_1d(sounds) - 1));

return sounds[index];
