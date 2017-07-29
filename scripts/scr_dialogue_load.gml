// Loads the dialogue.json file and returns it as a ds_list with all the dialogue options

var climatechange = scr_dialogue_load_sub("election/climatechange.json");
var golf = scr_dialogue_load_sub("election/golf.json");
var mexicanwall = scr_dialogue_load_sub("multistage/mexicanwall.json");
var randombonus = scr_dialogue_load_sub("election/randombonus.json");
var sextape = scr_dialogue_load_sub("election/sextape.json");
var twitter = scr_dialogue_load_sub("election/twitter.json");

ds_list_merge(climatechange, golf, mexicanwall, randombonus, sextape, twitter);

return climatechange;
