self.tr_power_display += (global.tr_power - self.tr_power_display) / 10.0;
if (global.tr_money-self.tr_money_display>0)
self.tr_money_display += ceil((global.tr_money - self.tr_money_display) / 10.0);
else
self.tr_money_display += floor((global.tr_money - self.tr_money_display) / 10.0);
self.tr_money_display = round(self.tr_money_display);
