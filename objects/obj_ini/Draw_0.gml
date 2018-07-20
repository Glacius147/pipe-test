/// @description Insert description here
// You can write your code in this editor


with global.current
{
	draw_set_halign(fa_middle);
	draw_set_font(font_debug);
	draw_set_color(c_red);
	draw_text(950,50,string(direction_1)+" "+string(direction_2));
}