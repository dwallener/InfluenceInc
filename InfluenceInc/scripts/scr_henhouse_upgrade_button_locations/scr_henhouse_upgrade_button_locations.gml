// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_henhouse_upgrade_button_locations(henhouse_number) {
	
	var hitbox =
	{
		x : 0,
		y : 390,
		size : 150
	}

	switch (henhouse_number) {
		case 1:
			hitbox.x = 1150;
			break;
		case 2:
			hitbox.x = 1550;
			break;
		case 3:
			hitbox.x = 2000;
			break;
		case 4:
			hitbox.x = 2500;
			break;
		default: break;
	}
	
	return hitbox;	


}