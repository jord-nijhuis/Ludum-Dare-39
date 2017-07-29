
var days = ds_map_create();

// Trump announced on 16th of July 2015 and became president on 9th of Noveber 2016
// This means that the election day was on day 481
ds_map_add(days, "election_day" , 481);

// He started his term on 20th of January 2017, on day 554
ds_map_add(days, "term_start_day" , 554);

// His term will end on 20th of January 2021, on day 2015.
ds_map_add(days, "term_end_day" , 2015);

return days;

