// scr_popularity_increase(popularityDelta)
global.tr_popularity += argument0;

if (argument0 > 0)
{
    audio_play_sound(snd_popularity_up, 10, false);
}

if(argument0 < 0)
{
    audio_play_sound(snd_popularity_down, 10, false);
}

if (global.tr_popularity > 100) {
    global.tr_popularity = 100;
} else if (global.tr_popularity < 0) {
    global.tr_popularity = 0;
}
