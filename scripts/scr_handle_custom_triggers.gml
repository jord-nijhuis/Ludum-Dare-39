
var triggers = argument0;

if(ds_list_find_index(triggers, "RESTART") != -1)
{
    game_restart();
}

if(ds_list_find_index(triggers, "QUIT") != -1)
{
    game_end();
}
