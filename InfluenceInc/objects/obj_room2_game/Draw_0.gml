/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(global.ui_surf)) {
	global.ui_surf = surface_create(1024, 2048);
}
surface_set_target(global.ui_surf);
	
// draw here
scr_draw_add_followers_button(200, 1900, 824, 2000, 50, 50, false, c_red);
// draw_roundrect_ext(200, 1900, 824, 2000, 50, 50, false);
	
surface_reset_target();
draw_surface(global.ui_surf, 0, 0);
	
draw_set_color(c_white);
draw_set_font(font_droid_22);

// update followers
draw_text(global.followers_x, global.followers_y, string(total_followers_SI));


// update cash
scr_update_cash(global.cash, global.earnings_per_s);
