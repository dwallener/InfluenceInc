/// @description Insert description here
// You can write your code in this editor


switch(direction) {
	case 0	: // up
		sprite_index = spr_vespa_front;
		break;
	case 90 : // right
		sprite_index = spr_vespa_side;
		break;
	case 180: // down
		sprite_index = spr_vespa_front;
		break;
	case 270: // left
		sprite_index = spr_vespa_front;
		break;
	default	:
		break;
}

