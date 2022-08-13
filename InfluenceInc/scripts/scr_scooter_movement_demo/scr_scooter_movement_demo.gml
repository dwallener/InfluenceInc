/// @description	Move the scooter down the road, starting from North entrance
/// @function		scr_scooter_movement_demo(speed)
/// @param {scooter_speed}	scooter speed, as a divisor of tile size (1 is fastest, 128 is slowest)
/// @param {inst_scooter}	the scooter instance to move
/// @param {inst_puff}		the exhaust puff instance to move

// Script to demo movement of the scooter on the road

function scr_scooter_movement_demo(scooter_speed, inst_scooter, inst_puff){
	
	// grab the scooter instance
	scooter = global.inst_scooter;
	scooter_puff = global.inst_puff;
	
	// we know the demo scooter is coming in from the North, row 0, column 7
	// define how quickly 
	lcl_speed = floor(tile_size / speed);
	
	curr_pos = {
		x : 0,
		y : 0
	};
	
	var tile_location = [0,0];
	
	// because tile math triggers on the location of the upper left corner of the sprite
	// we need to tweak the coordinates based on direction of travel

	// returns row, col
	tile_location = scr_get_tile_coords (scooter.x, scooter.y);
	
	// now big switch statement to make movement stay on the road
	
	// rows on the outside
	// columns on the inside
	switch (tile_location[0]) {
		case 0 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 : scooter.direction = 270; scooter_puff.direction = 270; break;
				case 7 :
				default : break;
			}
			break;
		case 1 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 : scooter.direction = 270; scooter_puff.direction = 270; break;
				case 7 :
				default : break;
			}
			break;
		case 2 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 : scooter.direction = 270; scooter_puff.direction = 270; break;
				case 7 :
				default : break;
			}
			break;
		case 3 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 : scooter.direction = 270; scooter_puff.direction = 270; break;
				case 7 :
				default : break;
			}
			break;
		case 4 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 : scooter.direction = 270; scooter_puff.direction = 270; break;
 				case 7 :
				default : break;
			}
			break;
		case 5 : // bottom of north road
			switch (tile_location[1]) {
				case 0 : break;
				case 1 : break;
				case 2 : break;
				case 3 : break;
				case 4 : 
					scooter_puff.direction = 270;
					scooter.direction = 270; 
					scooter.image_angle = 270; 
					break; // turn south again
				case 5 : break;
				case 6 : 
					scooter_puff.direction = 180;
					scooter.direction = 180; 
					scooter.image_angle = 180; 
					scooter.image_yscale = -1;
					break; // turned into here
				case 7 : break;
				default : break;
			}
			break;
		case 6 :
			switch (tile_location[1]) {
				case 0 : break;
				case 1 : break;
				case 2 : break;
				case 3 : break;
				case 4 : break;
				case 5 : break;
				case 6 : break;
				case 7 : break;
				default : break;
			}
			break;
		case 7 :
			switch (tile_location[1]) {
				case 0 : break;
				case 1 : break;
				case 2 : break;
				case 3 : break;
				case 4 : break;
				case 5 : break;
				case 6 : break;
				case 7 : break;
				default : break;
			}
			break;
		case 8 :
			switch (tile_location[1]) {
				case 0 : break;
				case 1 : break;
				case 2 : break;
				case 3 : break;
				case 4 : break;
				case 5 : break;
				case 6 : break;
				case 7 : break;
				default : break;
			}
			break;
		case 9 :
			switch (tile_location[1]) {
				case 0 : break;
				case 1 : break;
				case 2 : break;
				case 3 : break;
				case 4 : break;
				case 5 : break;
				case 6 : break;
				case 7 : break;
				default : break;
			}
			break;
		case 10 :
			switch (tile_location[1]) {
				case 0 : break;
				case 1 : break;
				case 2 : break;
				case 3 : break;
				case 4 :
					scooter_puff.direction = 180;
					scooter.direction = 180; 
					scooter.image_angle = 180; 
					break;
				case 5 : break;
				case 6 : break;
				case 7 : break;
				default : break;
			}
			break;
		case 11 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 :
				case 7 :
				default : break;
			}
			break;
		case 12 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 :
				case 7 :
				default : break;
			}
			break;
		case 13 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 :
				case 7 :
				default : break;
			}
			break;
		case 14 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 :
				case 7 :
				default : break;
			}
			break;
		case 15:
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 :
				case 7 :
				default : break;
			}
			break;
		default : break;
	}
}