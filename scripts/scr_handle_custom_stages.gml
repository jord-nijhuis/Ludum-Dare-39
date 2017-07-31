
var dialogue = argument0;
var stage = argument1;

if(stage == "election_day")
{
    if(global.tr_popularity > 50)
    {
        scr_dialogue_setoverwriteevent(
            scr_dialogue_select_by_id(dialogue, "election_day_won")
        );
        
        // Set the power to 70 if it was lower than 70
        if(global.tr_power < 70)
        {
            scr_power_add(70 - global.tr_power);
        }
        
        // The president must at least have some money
        if (global.tr_money < 10000)
        {
            scr_money_add(10000 - global.tr_money);
        }
        
        return undefined;
    }
    
    scr_dialogue_setoverwriteevent(
            scr_dialogue_select_by_id(dialogue, "election_day_lost")
    );
}

if(stage == "president")
{
    // Money failure state
    if(global.tr_money < 0)
    {
        scr_dialogue_setoverwriteevent(
            scr_dialogue_select_by_id(dialogue, "FAILURE_MONEY")
        );
        return undefined;
    }
    
    // Power failure state
    if(global.tr_power < 45)
    {
        scr_dialogue_setoverwriteevent(
            scr_dialogue_select_by_id(dialogue, "FAILURE_POWER")
        );
        return undefined;
    }
}
