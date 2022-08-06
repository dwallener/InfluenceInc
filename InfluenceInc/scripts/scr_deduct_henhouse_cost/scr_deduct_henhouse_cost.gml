// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_deduct_henhouse_cost(henhouses, henhouse_to_upgrade){

	var cost = scr_calculate_henhouse_cost(henhouses, henhouse_to_upgrade)

	if (cost > global.dollars)	{ show_message("You're too poor!"); }
	else						{ global.dollars -= cost; }

}