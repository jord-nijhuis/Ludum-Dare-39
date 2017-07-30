
var triggers = argument0;

if(ds_list_find_index(triggers, "restart"))
{
    game_restart();
}

if(ds_list_find_index(triggers, "quit"))
{
    game_end();
}
