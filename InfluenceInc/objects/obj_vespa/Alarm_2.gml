/// @description Insert description here
// You can write your code in this editor
show_message("Alarm 2");

object_set_sprite(obj_vespa, spr_vespa_side);
instance_destroy(global.inst_vespa);
global.inst_vespa = instance_create_layer(100, 100, "Instances", obj_vespa );

alarm[2] = -1;

