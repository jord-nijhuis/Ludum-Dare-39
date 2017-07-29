// scr_power_decrease(powerDelta)
global.tr_power -= argument0;
if (global.tr_power > 100) {
    global.tr_power = 100;
} else if (global.tr_power < 0) {
    global.tr_power = 0;
}
