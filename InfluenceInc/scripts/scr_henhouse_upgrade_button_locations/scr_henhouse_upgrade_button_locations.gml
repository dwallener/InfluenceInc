/// @description	defines hitboxes for henhouse upgrades, by left/right location (1-4)
/// @function		scr_henhouse_upgrade_button_locations(henhouse_number)
/// @param {index}	the research tier we're looking at
/// @param {index}	the research index inside that tier

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