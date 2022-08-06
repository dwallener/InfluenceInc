// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_calculate_henhouse_cost(henhouses, henhouse_to_upgrade) {
	
	var level_to_look_for = henhouses[henhouse_to_upgrade];
	
	var num_upgrades = 0;
	if (henhouses[0] >= level_to_look_for) { num_upgrades += 1; }
	if (henhouses[1] >= level_to_look_for) { num_upgrades += 1; }
	if (henhouses[2] >= level_to_look_for) { num_upgrades += 1; }
	if (henhouses[3] >= level_to_look_for) { num_upgrades += 1; }
	num_upgrades -= 1; // need to nudge it back down - yeah, sorry, this is the cleanest math, lol

	var cost = global.henhouse_costs[level_to_look_for][num_upgrades];

	return cost;
}