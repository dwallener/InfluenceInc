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
	


