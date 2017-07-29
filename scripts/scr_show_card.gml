// scr_show_card(choices)
// Shows a card, generates options from 'choices' and returns the new card instance

var newCard = instance_create(0,0, obj_card);
newCard.options = argument0;

var text = ds_map_find_value(argument0, "text");

newCard.textObject = scr_draw_text(text, 0,0, 300);
newCard.textObject.color = c_black;
newCard.textObject.font = fnt_card;

var choices = ds_map_find_value(argument0, "choices");
var options = scr_card_createoptionsfromchoices(choices);
newCard.options = options;

scr_setcurrentcard(newCard);
return newCard;
