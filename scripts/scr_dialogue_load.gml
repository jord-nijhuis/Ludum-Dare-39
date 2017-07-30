// Loads the dialogue.json file and returns it as a ds_list with all the dialogue options

var start = scr_dialogue_load_sub("election/start.json");
var climatechange = scr_dialogue_load_sub("election/climatechange.json");
var golf = scr_dialogue_load_sub("election/golf.json");
var mexicanwall = scr_dialogue_load_sub("multistage/mexicanwall.json");
var randombonus = scr_dialogue_load_sub("election/randombonus.json");
var sextape = scr_dialogue_load_sub("election/sextape.json");
var twitter = scr_dialogue_load_sub("election/twitter.json");
var election_day = scr_dialogue_load_sub("election_day/election_day.json");
var terrorists = scr_dialogue_load_sub("president/terrorists.json");
var failures = scr_dialogue_load_sub("president/failures.json");

ds_list_merge(
    start,
    climatechange, 
    golf, 
    mexicanwall, 
    randombonus, 
    sextape, 
    twitter,
    election_day,
    terrorists,
    failures
);

return start;
