
var triggers = argument0;

if(ds_list_find_index(triggers, "RESTART"))
{
    game_restart();
}

if(ds_list_find_index(triggers, "QUIT"))
{
    game_end();
}
