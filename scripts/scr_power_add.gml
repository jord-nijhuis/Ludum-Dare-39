// scr_power_increase(powerDelta)
global.tr_power += argument0;
if (global.tr_power > 100) {
    global.tr_power = 100;
} else if (global.tr_power < 0) {
    global.tr_power = 0;
}

if (argument0 > 0)
{
    audio_play_sound(snd_power_up, 10, false);
}

if(argument0 < 0)
{
    audio_play_sound(snd_power_down, 10, false);
}
