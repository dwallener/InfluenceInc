/// @description Insert description here
// You can write your code in this editor


i = irandom_range(1,3);
show_message(i);
switch(1) {
	case 1 :
		object_set_sprite(obj_vespa, spr_vespa_rear);
		instance_destroy(global.inst_vespa);
		global.inst_vespa = instance_create_layer(100, 100, "Instances", obj_vespa );
		break;
	case 2 :
		object_set_sprite(obj_vespa, spr_vespa_front);
		instance_destroy(global.inst_vespa);
		global.inst_vespa = instance_create_layer(100, 100, "Instances", obj_vespa );
		break;
	case 3 :
		object_set_sprite(obj_vespa, spr_vespa_side);
		instance_destroy(global.inst_vespa);
		global.inst_vespa = instance_create_layer(100, 100, "Instances", obj_vespa );
		break;
	default:
		break;
}
		

