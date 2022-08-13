// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_add_followers_button(x, y, xx, yy, radius_x, radius_y, outline, box_color){
	
	draw_set_color(box_color);
	draw_roundrect_ext(x, y, xx, yy, radius_x, radius_y, outline);
	draw_set_color(c_white);
	draw_set_font(font_droid_36);
	draw_text(x+90, y+22, "Add More Likes!");
}