/// @description	Move the scooter down the road, starting from North entrance
/// @function		scr_scooter_movement_demo(speed)
/// @param {scooter_speed}	scooter speed, as a divisor of tile size (1 is fastest, 128 is slowest)
/// @param {inst_scooter}	the scooter instance to move

// Script to demo movement of the scooter on the road

function scr_scooter_movement_demo(scooter_speed, inst_scooter){
	
	// grab the scooter instance
	scooter = global.inst_scooter;
	// we know the demo scooter is coming in from the North, row 0, column 7
	// define how quickly 
	lcl_speed = tile_size / speed;
	
	curr_pos = {
		x : 0,
		y : 0
	};
	
	var tile_location = [0,0];
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
				case 6 :
					scooter.speed = lcl_speed;
					scooter.direction = 90;
				case 7 :
				default : break;
			}
		case 1 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 :
					scooter.speed = lcl_speed;
					scooter.direction = 90;
				case 7 :
				default : break;
			}
		case 2 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 :
					scooter.speed = lcl_speed;
					scooter.direction = 90;
				case 7 :
				default : break;
			}
		case 3 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 :
					scooter.speed = lcl_speed;
					scooter.direction = 90;
				case 7 :
				default : break;
			}
		case 4 :
			switch (tile_location[1]) {
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 :
					scooter.speed = lcl_speed;
					scooter.direction = 90;
 				case 7 :
				default : break;
			}
		case 5 : // bottom of north road
			show_message("Turn right!!!");
			switch (tile_location[1]) {
				case 0 :
					scooter.speed = lcl_speed;
					scooter.direction = 180;
				case 1 :
					scooter.speed = lcl_speed;
					scooter.direction = 180;
				case 2 :
					scooter.speed = lcl_speed;
					scooter.direction = 180;
				case 3 :
					scooter.speed = lcl_speed;
					scooter.direction = 180;
				case 4 :
					scooter.speed = lcl_speed;
					scooter.direction = 180;
				case 5 :
					scooter.speed = lcl_speed;
					scooter.direction = 180;
				case 6 :
					scooter.speed = lcl_speed;
					scooter.direction = 180;
				case 7 :
				default : break;
			}
		case 6 :
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
		case 7 :
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
		case 8 :
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
		case 9 :
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
		case 10 :
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
		default : break;
	}
		
	
	
}