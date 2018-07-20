/// @description Insert description here
// You can write your code in this editor

with global.source
{
	
	direction_in = direction_1;
	direction_out = direction_2;
	image_speed = 1
	
	show_debug_message("direction_in source"+string(direction_in));
	show_debug_message("direction_out source"+string(direction_out));
	
}

with global.current
{
	instance_destroy()	
}