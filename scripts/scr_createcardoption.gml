// scr_createcardoption(text, powerIncrease, wealthIncrease, popularityIncrease);

var newOption = instance_create(0,0, obj_cardoption);

newOption.text = argument0;
newOption.powerIncrease = argument1;
newOption.wealthIncrease = argument2;
newOption.popularityIncrease = argument3;

return newOption;
