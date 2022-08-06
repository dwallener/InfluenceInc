/// @description	Display the visual for Henhouse 2 (the pool)
/// @function		scr_display_henhouse_2(henhouse_level)
/// @param {henhouse_level}	henhouse level

function scr_display_henhouse_2(henhouse_level) {
	
	if instance_exists(global.inst_henhouse_2) {
		instance_destroy(global.inst_henhouse_2);
	}
	switch(henhouse_level) {
		case 0 : 
			global.inst_henhouse_2 = instance_create_layer(1500, 100, "Instances", obj_pool_coop);
			break;
		case 1 :
			global.inst_henhouse_2 = instance_create_layer(1500, 100, "Instances", obj_pool_shack);
			break;
		case 2 :
			global.inst_henhouse_2 = instance_create_layer(1500, 100, "Instances", obj_pool_supershack);
			break;
		case 3 :
			global.inst_henhouse_2 = instance_create_layer(1500, 100, "Instances", obj_pool_shorthouse);
			break;
		default: break;
	}

}