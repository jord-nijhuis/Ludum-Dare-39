var diff = argument1-argument0;
while(diff > 180) {
    diff -= 360;
}
while(diff<-180) {
    diff += 360;
}
return diff;
