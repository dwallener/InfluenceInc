/// @description Insert description here
// You can write your code in this editor

// destroy the Research GUI, but only if it exists

if (instance_exists(global.inst_gui_2)) {

	var tile  = [0,0];

	tile = scr_get_tile_coords(mouse_x, mouse_y);

	show_message(string(tile[0]) + " " + string(tile[1]));

	if ((tile[0] = 5) & (tile[1] = 7)) {
		instance_destroy(global.inst_gui_3);
		instance_destroy(global.inst_gui_1);
		instance_destroy(global.inst_gui_2);
	}
}

