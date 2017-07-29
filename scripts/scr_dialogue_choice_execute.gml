// Executes all the values that are defined in the choice option (Money, power, etc)
// Note that this uses the global variables that are declared in obj_initgame

// A choice option of a dialogue object
var choice = argument0;

var money = ds_map_find_value(choice, "money");
var _power = ds_map_find_value(choice, "power");
var popularity = ds_map_find_value(choice, "populairity");
var triggers = ds_map_find_value(choice, "triggers");


ds_list_add(global.used_dialogue, choice);

if(!is_undefined(money))
{
    global.tr_money += money;
}

if(!is_undefined(_power))
{
    global.tr_power += _power;
}

if(!is_undefined(popularity))
{
    global.tr_popularity += popularity;
}

if(!is_undefined(triggers))
{
    global.triggers = ds_list_unique(ds_list_merge(global.triggers, triggers));
}
