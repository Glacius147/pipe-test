/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if image_speed != 0
{
	draw_set_halign(fa_middle);
	draw_set_font(font_debug);
	draw_set_color(c_red);
	draw_text(950,100,string(direction_in)+" "+string(direction_out));
}