/// @description Insert description here
// You can write your code in this editor

// make sure orientation is right

switch(direction) {
	case 0	: // up
		image_angle = 0;
		sprite_index = spr_vespa_front;
		break;
	case 90 : // right
		image_angle = 0;
		sprite_index = spr_vespa_side;
		break;
	case 180: // down
		image_angle = 0;
		sprite_index = spr_vespa_side;
		break;
	case 270: // left
		image_angle = 0;
		sprite_index = spr_vespa_front;
		break;
	default	:
		break;
}


// where should we go?
// get tile coords

var tile = [0,0];
tile = scr_get_tile_coords (x,y);

switch (tile[0]) { // row
	case 0:
		switch (tile[1]) { // col
			default:
				break;
		}
		break;
	case 1:
		switch (tile[1]) { // col
			default:
				break;
		}
		break;
	case 2:
		switch (tile[1]) { // col
			default:
				break;
		}
		break;
	case 3:
		switch (tile[1]) { // col
			default:
				break;
		}
		break;
	case 4:
		switch (tile[1]) { // col
			default:
				break;
		}
		break;
	case 5:
		switch (tile[1]) { // col
			case 4 :
				direction = 270;
				break;
			case 6 :
				direction = 180;
				break;
			default:
				break;
		}
		break;
	case 6:
		switch (tile[1]) { // col
			case 6 :
			default:
				break;
		}
		break;
	case 7:
		switch (tile[1]) { // col
			case 6 :
			default:
				break;
		}
		break;
	case 8:
		switch (tile[1]) { // col
			case 6 :
			default:
				break;
		}
		break;
	case 9:
		switch (tile[1]) { // col
			case 6 :
			default:
				break;
		}
		break;
	case 10:
		switch (tile[1]) { // col
			case 0 :
				instance_destroy();
				break;
			case 4 :
				direction = 180;
				break;
			default:
				break;
		}
		break;
	case 11:
		switch (tile[1]) { // col
			default:
				break;
		}
		break;
	case 12:
		switch (tile[1]) { // col
			default:
				break;
		}
		break;
	case 13:
		switch (tile[1]) { // col
			default:
				break;
		}
		break;
	case 14:
		switch (tile[1]) { // col
			default:
				break;
		}
		break;
	case 15:
		switch (tile[1]) { // col
			default:
				break;
		}
		break;
	default:
		break;
}


// make it pulse

pulse_step++;
pulse_step = pulse_step % 32;

switch (pulse_step) {
	case 0  :
	case 1	:
		image_yscale = 0.50;
		image_xscale = 0.50;
		break;
	case 2  :
	case 3	:
		image_xscale = 0.48;
		image_yscale = 0.48;
		break;
	case 4  :
	case 5	:
		image_xscale = 0.46;
		image_yscale = 0.46;
		break;
	case 6  :
	case 7	:
		image_xscale = 0.44;
		image_yscale = 0.44;
		break;
	case 8  :
	case 9	:
		image_xscale = 0.42;
		image_yscale = 0.42;
		break;
	case 10  :
	case 11	 :
		image_xscale = 0.40;
		image_yscale = 0.40;
		break;
	case 12  :
	case 13	 :
		image_xscale = 0.38;
		image_yscale = 0.38;
		break;
	case 14  :
	case 15	 :
		image_xscale = 0.36;
		image_yscale = 0.36;
		break;
	case 16  :
	case 17  :
		image_xscale = 0.38;
		image_yscale = 0.38;
		break;
	case 18  :
	case 19  :
		image_xscale = 0.38;
		image_yscale = 0.38;
		break;
	case 20  :
	case 21  :
		image_xscale = 0.40;
		image_yscale = 0.40;
		break;
	case 22  :
	case 23  :
		image_xscale = 0.42;
		image_yscale = 0.42;
		break;
	case 24  :
	case 25  :
		image_xscale = 0.44;
		image_yscale = 0.44;
		break;
	case 26 :
	case 27 :
		image_xscale = 0.46;
		image_yscale = 0.46;
		break;
	case 28  : 
	case 29  :
		image_xscale = 0.48;
		image_yscale = 0.48;
		break;
	case 30  :
	case 31  :
		image_xscale = 0.50;
		image_yscale = 0.50;
		break;
	default: break;
}