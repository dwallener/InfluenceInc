/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(ui_surf)) {
	// same size as application surface
	ui_surf = surface_create(4000, 1700);
}
surface_set_target(ui_surf);

// draw here
draw_set_colour(c_yellow);
draw_roundrect_ext(500, 500, 400, 400, 50, 50, 0);

surface_reset_target();
draw_surface(ui_surf, 0, 0);

/*
if view_current = 0 {
	surface_set_target(ui_surf);
	// draw something
	surface_reset_target();
}
else {
	draw_surface(ui_surf, 0, 0);
}	
*/
