// Draws text line for line
// Returns an instance of obj_draw_text

// The first argument is the text
var _text = argument0;

// The second argument is the X position of the text
var _x = argument1;

// The third argument is the Y position of the text
var _y = argument2;

// The fourth argument is the maximum width the text can have before moving to a newline
var _max_x = argument3;


var instance = instance_create(_x, _y, obj_scr_draw_text);

instance.text = _text;
instance.max_x = _max_x;

return instance;

