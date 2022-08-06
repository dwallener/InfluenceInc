/// @description	Display the visual for Henhouse 1 (the house
/// @function		scr_display_henhouse_1(henhouse_level)
/// @param {henhouse_level}	henhouse level

function scr_display_henhouse_1(henhouse_level) {
	
	if instance_exists(global.inst_henhouse_1) {
		instance_destroy(global.inst_henhouse_1);
	}
	switch(henhouse_level) {
		case 0 : 
			global.inst_henhouse_1 = instance_create_layer(1000, 100, "Instances", obj_henhouse_coop);
			break;
		case 1 :
			global.inst_henhouse_1 = instance_create_layer(1000, 100, "Instances", obj_henhouse_shack);
			break;
		case 2 :
			global.inst_henhouse_1 = instance_create_layer(1000, 100, "Instances", obj_henhouse_supershack);
			break;
		case 3 :
			global.inst_henhouse_1 = instance_create_layer(1000, 100, "Instances", obj_henhouse_coop);
			break;
		default: break;
	}

}