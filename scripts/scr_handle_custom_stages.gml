
var dialogue = argument0;
var stage = argument1;

if(stage == "election_day")
{
    if(global.tr_popularity > 50)
    {
        scr_dialogue_setoverwriteevent(
            scr_dialogue_select_by_id(dialogue, "election_day_won")
        );
        
        return undefined;
    }
    
    scr_dialogue_setoverwriteevent(
            scr_dialogue_select_by_id(dialogue, "election_day_lost")
    );
}
