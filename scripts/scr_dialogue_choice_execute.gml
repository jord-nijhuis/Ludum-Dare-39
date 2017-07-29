// Executes all the values that are defined in the choice option (Money, power, etc)
// Note that this uses the global variables that are declared in obj_initgame

// A choice option of a dialogue object
var choice = argument0;

var money = ds_map_find_value(choice, "money");
var _power = ds_map_find_value(choice, "power");
var popularity = ds_map_find_value(choice, "popularity");
var day = ds_map_find_value(choice, "day");
var triggers = ds_map_find_value(choice, "triggers");
var unset_triggers = ds_map_find_value(choice, "unset_triggers");
var sound = ds_map_find_value(choice, "sound");

// Add the choice we are executing to the used choices
ds_list_add(global.used_choices, choice);

// Money
if(!is_undefined(money))
{
    scr_money_add(money);
}

// Power
if(!is_undefined(_power))
{
    scr_power_add(_power);
}

// Popularity
if(!is_undefined(popularity))
{
    scr_popularity_add(popularity);
}

// Day
if(is_undefined(day))
{
    day = round(random_range(25, 35));
}

global.day = scr_add_days(global.day, day);

// Triggers
if(!is_undefined(triggers))
{
    ds_list_merge(global.triggers, triggers)
    ds_list_unique(global.triggers);
}

// Unset Triggers
if(!is_undefined(unset_triggers))
{
    ds_list_delete_elements(global.triggers, unset_triggers);
}

// Play sound
if(!is_undefined(sound))
{
    audio_play_sound(scr_phrases_select_by_name(sound), 20, false);
}
