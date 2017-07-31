
var day = argument0;
var amount = argument1;

var days = scr_get_important_days();

var election_day = ds_map_find_value(days, "election_day");
var term_start_day = ds_map_find_value(days, "term_start_day");;
var term_end_day = ds_map_find_value(days, "term_end_day");;

ds_map_destroy(days);

// We cannot skip the election
if(scr_get_stage(day + amount) != "election" && ds_list_find_index(global.triggers, "ELECTION_DAY") == -1)
{
    return election_day;
}


return day + amount;
