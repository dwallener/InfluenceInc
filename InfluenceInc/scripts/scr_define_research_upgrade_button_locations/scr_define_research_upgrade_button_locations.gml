/// @description	defines hitboxes for research upgrades, by tier/index
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
			hitbox.x = 600;
			switch (tier_index) {
				case 1: hitbox.y = 645; break;
				case 2: hitbox.y = 675; break;
				case 3: hitbox.y = 705; break;
				case 4: hitbox.y = 735; break;
				default: break;
			}
			break;
		case 2:
			hitbox.x = 600;
			switch (tier_index) {
				case 1: hitbox.y = 845; break;
				case 2: hitbox.y = 875; break;
				case 3: hitbox.y = 905; break;
				case 4: hitbox.y = 935; break;
				case 5: hitbox.y = 965; break;
				default: break;
			}
			break;
		case 3:
			hitbox.x = 800;
			switch (tier_index) {
				case 1: hitbox.y = 1055; break;
				case 2: hitbox.y = 1085; break;
				case 3: hitbox.y = 1115; break;
				case 4: hitbox.y = 1145; break;
				case 5: hitbox.y = 1175; break;
				default: break;
			}
			break;
		case 4:
			hitbox.x = 00;
			switch (tier_index) {
				case 1: hitbox.y = 1265; break;
				case 2: hitbox.y = 1295; break;
				case 3: hitbox.y = 1325; break;
				case 4: hitbox.y = 1355; break;
				case 5: hitbox.y = 1385; break;
				default: break;
			}
			break;
		default: break;
	}
	
	return hitbox;	

}
