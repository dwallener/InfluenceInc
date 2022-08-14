// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_standard_UI_panel(x, y, xx, yy, radius_x, radius_y, outline, box_color){

/*
	if (!surface_exists(global.ui_surf) ) {
		global.ui_surf = surface_create ( 1024, 2048 );
	}

	surface_set_target(global.ui_surf); 
	
	draw_set_color(box_color);
*/
	draw_roundrect_ext(x, y, xx, yy, radius_x, radius_y, outline);
/*
	surface_reset_target();
	draw_surface(global.ui_surf, 0, 0);
*/
}