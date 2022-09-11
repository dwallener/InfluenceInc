// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_cash(cash, earnings_per_s) {
	
	// now figure out where to write this...
	var tmp_string = "$" + string(cash);
	draw_set_font(font_droid_36);
	draw_set_color(c_white);
	draw_text(450, 58, tmp_string)

	// calculate current earnings/sec and display that too
	tmp_string = "$" + string(earnings_per_s) + "/s";
	draw_set_font(font_droid_22);
	draw_text(460, 110, tmp_string);

}