/// @description Insert description here
// You can write your code in this editor

// get rid of the research GUI elements if X is hit

var tile  = [0,0];

tile = scr_get_tile_coords(mouse_x, mouse_y);

show_message(string(tile[0]) + " " + string(tile[1]));

if ((tile[0] = 7) & (tile[1] = 5)) {
	// self
	instance_destroy();
	// gui_1
	instance_destroy(global.inst_gui_1);
	// gui_2
	instance_destroy(global.inst_gui_2);
}