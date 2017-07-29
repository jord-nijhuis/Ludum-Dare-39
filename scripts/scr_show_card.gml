// scr_show_card(text)
// Shows a card and returns the new card instance
// optionMap is a ds_list containing obj_cardoption objects

var newCard = instance_create(0,0, obj_card);
newCard.textObject = scr_draw_text(argument0, 0,0, 300);
newCard.textObject.color = c_black;
newCard.textObject.font = fnt_card;
newCard.options = argument1;

scr_setcurrentcard(newCard);
return newCard;
