var stage = scr_get_stage(global.day);

if(stage == "election_day")
{
    if(global.tr_popularity > 50)
    {   
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
        
        return scr_dialogue_select_by_id(global.dialogue, "election_day_won");
    }
    
    return scr_dialogue_select_by_id(global.dialogue, "election_day_lost");
}

if(stage == "president")
{
    // Money failure state
    if(global.tr_money < 0)
    {
        return scr_dialogue_select_by_id(global.dialogue, "FAILURE_MONEY")
    }
    
    // Power failure state
    if(global.tr_power < 45)
    {
        return scr_dialogue_select_by_id(global.dialogue, "FAILURE_POWER");
    }
}

return undefined;
