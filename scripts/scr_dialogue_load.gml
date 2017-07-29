// Loads the dialogue.json file and returns it as a ds_list with all the dialogue options

var file = file_text_open_read("dialogue.json");

var json = "";

while(!file_text_eof(file))
{   
    json += file_text_read_string(file);
    file_text_readln(file);    
}

file_text_close(file);

return ds_map_find_value(json_decode(json), "default");
