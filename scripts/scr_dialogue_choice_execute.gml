// Executes all the values that are defined in the choice option (Money, power, etc)
// Note that this uses the global variables that are declared in obj_initgame

// A choice option of a dialogue object
var choice = argument0;

var money = ds_map_find_value(choice, "money");
var _power = ds_map_find_value(choice, "power");
var popularity = ds_map_find_value(choice, "popularity");
var days = ds_map_find_value(choice, "days");
var triggers = ds_map_find_value(choice, "triggers");
var unset_triggers = ds_map_find_value(choice, "unset_triggers");
var sound = ds_map_find_value(choice, "sound");
var change_room = ds_map_find_value(choice, "change_room");

// Add the choice we are executing to the used choices
ds_list_add(global.used_choices, choice);

var timer = 0;

// Money
if(!is_undefined(money))
{
    m = instance_create(200,200,obj_statchange);
    m.timer = timer;
    m.type = 0;
    m.amount = money;
    timer += 60;
}

// Power
if(!is_undefined(_power))
{
    m = instance_create(room_width/2,200,obj_statchange);
    m.timer = timer;
    timer += 60;
    m.type = 1;
    m.amount = _power;
}

// Popularity
if(!is_undefined(popularity))
{
    m = instance_create(room_width-200,200,obj_statchange);
    m.timer = timer;
    timer += 60;
    m.type = 2;
    m.amount = popularity;
}

// Triggers
if(!is_undefined(triggers))
{
    ds_list_merge(global.triggers, triggers)
    ds_list_unique(global.triggers);
}

// Day
if(is_undefined(days))
{
    if (scr_get_stage(global.day) == "president")
    {
        days = round(random_range(85, 95));
    }
    else
    {
        days = round(random_range(35, 45));
    }
    
}

global.day = scr_add_days(global.day, days);

// Change room
if(!is_undefined(change_room))
{
    room_goto(asset_get_index(change_room));
}

// Unset Triggers
if(!is_undefined(unset_triggers))
{
    ds_list_delete_elements(global.triggers, unset_triggers);
}

// Play sound
if(!is_undefined(sound))
{
    scr_audio_manager_queue_sound(scr_phrases_select_by_name(sound));
}

scr_handle_custom_triggers(global.triggers);
scr_handle_custom_stages(global.dialogue, scr_get_stage(global.day));
