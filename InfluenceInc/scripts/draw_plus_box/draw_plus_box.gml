// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_plus_box(x, y, box_color){
	
	draw_set_color (box_color);
	draw_rectangle(x, y, x+30, y+30, false);
	draw_set_color (c_white);
	draw_set_font(font_droid_22);
	draw_text(x+5, y, "+");
}