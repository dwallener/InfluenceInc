/// @description	Display the visual for Henhouse 3 (the pool)
/// @function		scr_display_henhouse_3(henhouse_level)
/// @param {henhouse_level}	henhouse level

function scr_display_henhouse_3(henhouse_level){
	
	if instance_exists(global.inst_henhouse_3) {
		instance_destroy(global.inst_henhouse_3);
	}
	switch(henhouse_level) {
		case 0 : 
			global.inst_henhouse_3 = instance_create_layer(2000, 100, "Instances", obj_patio_coop);
			break;
		case 1 :
			global.inst_henhouse_3 = instance_create_layer(2000, 100, "Instances", obj_patio_shack);
			break;
		case 2 :
			global.inst_henhouse_3 = instance_create_layer(2000, 100, "Instances", obj_patio_supershack);
			break;
		case 3 :
			global.inst_henhouse_3 = instance_create_layer(2000, 100, "Instances", obj_patio_shorthouse);
			break;
		default: break;
	}

}