// scr_createcardoption(text, choiceData);

var newOption = instance_create(0,0, obj_cardoption);

newOption.text = ds_map_find_value(argument0, "text");
newOption.choice = argument0;
newOption.font = fnt_option;

return newOption;
