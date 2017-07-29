// Executes all the values that are defined in the choice option (Money, power, etc)
// Note that this uses the global variables that are declared in obj_initgame

// A choice option of a dialogue object
var choice = argument0;

var money = ds_map_find_value(choice, "money");
var _power = ds_map_find_value(choice, "power");
var popularity = ds_map_find_value(choice, "populairity");
var day = ds_map_find_value(day, "day");
var triggers = ds_map_find_value(choice, "triggers");


ds_list_add(global.used_dialogue, choice);

if(!is_undefined(money))
{
    scr_money_add(money);
}

if(!is_undefined(_power))
{
    scr_power_increase(_power);
}

if(!is_undefined(popularity))
{
    scr_popularity_increase(populairity);
}

if(is_undefined(day))
{
    day = 30000;
}

global.day = scr_add_days(global.day, day);

if(!is_undefined(triggers))
{
    global.triggers = ds_list_unique(ds_list_merge(global.triggers, triggers));
}
