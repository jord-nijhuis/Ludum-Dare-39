// This function takes the current day in game, and returns the stage that we are currently in

var day = argument0;

var days = scr_get_important_days();

var election_day = ds_map_find_value(days, "election_day");
var term_start_day = ds_map_find_value(days, "term_start_day");;
var term_end_day = ds_map_find_value(days, "term_end_day");;

ds_map_destroy(days);

if (day < election_day)
{
    return "election";
}

if (day == election_day)
{
    return "election_day";
}

if (day < term_start_day)
{
    return "president_elect";
}

if (day > term_start_day && day < term_end_day)
{
    return "president";
}

if (day > term_end_day)
{
    return "retired";
}
