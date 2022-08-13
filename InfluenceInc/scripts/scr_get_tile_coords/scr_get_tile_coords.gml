/// @description	Return tile coords for a set of pixel coords
/// @function		scr_get_tile_coords (pos_x, pos_y)
/// @param {pos_x}	X position in pixels
/// @param {pos_y}	Y position in pixels

function scr_get_tile_coords(pos_x, pos_y) {
	
	var tile_location = [0,0];

	tile_location[0] = pos_x div 128;
	tile_location[1] = pos_y div 128;
	
	//show_message(string(tile_location[0]) + ", " + string(tile_location[1]));
	
	return tile_location;
}