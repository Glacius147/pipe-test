/// @description Insert description here
// You can write your code in this editor

if !active and !(place_meeting(mouse_x,mouse_y,obj_bg))
{
	active = true;
	global.current = instance_create_layer(mouse_x,mouse_y,"Instances",obj_normal);
}