/// @description Insert description here
// You can write your code in this editor
show_message("Alarm 1");

object_set_sprite(obj_vespa, spr_vespa_front);
instance_destroy(global.inst_vespa);
global.inst_vespa = instance_create_layer(100, 100, "Instances", obj_vespa );

alarm[1] = -1;

