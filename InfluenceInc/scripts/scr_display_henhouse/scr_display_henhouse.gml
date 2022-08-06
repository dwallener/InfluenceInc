// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_display_henhouse(henhouse_level) {
	
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