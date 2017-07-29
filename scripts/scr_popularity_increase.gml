// scr_popularity_increase(popularityDelta)
global.tr_popularity += argument0;
if (global.tr_popularity > 100) {
    global.tr_popularity = 100;
} else if (global.tr_popularity < 0) {
    global.tr_popularity = 0;
}
