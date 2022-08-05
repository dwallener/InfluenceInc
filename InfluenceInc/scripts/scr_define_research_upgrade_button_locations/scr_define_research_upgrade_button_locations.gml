/// @function		scr_define_research_upgrade_button_locations(tier, tier_index)
/// @param {index}	the research tier we're looking at
/// @param {index}	the research index inside that tier

function scr_define_research_upgrade_button_locations(tier, tier_index) {
	
	var hitbox =
	{
		x : 0,
		y : 0,
		size : 30
	}
	
	switch (tier) {
		case 1:
			switch (tier_index) {
				case 1: 
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 2:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 3:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 4:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 5:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
			}
		case 2:
			switch (tier_index) {
				case 1: 
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 2:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 3:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 4:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 5:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
			}
		case 3:
			switch (tier_index) {
				case 1: 
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 2:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 3:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 4:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 5:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
			}
		case 4:
			switch (tier_index) {
				case 1: 
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 2:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 3:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 4:
					hitbox.x = 0;
					hitbox.y = 0;
					hitbox.size = 20;
					break;
				case 5:
			}
		default: ;
	}
	
	return hitbox;	

}
