if (scr_getcurrentcard()!=0) {
    var currentCard = scr_getcurrentcard();
    scr_deactivatecard(currentCard);
    currentCard.yTarget = -room_height/2;
    scr_setcurrentcard(0);
}
