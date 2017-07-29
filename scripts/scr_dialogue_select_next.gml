// Selects a single dialogue option that matches all the criteria
// Note that this uses the global variables that are declared in obj_initgame

var dialogue = scr_dialogue_select_by_stage(global.dialogue, global.stage);
dialogue = scr_dialogue_select_without_unstatisfied_triggers(dialogue, global.triggers);
dialogue = scr_dialogue_select_new(dialogue, global.used_dialogue);

return scr_dialogue_select_random(dialogue);
