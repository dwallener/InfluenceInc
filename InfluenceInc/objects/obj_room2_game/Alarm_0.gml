/// @description Insert description here
// You can write your code in this editor

// This will reset the "send paparazzi" alarm
alarm[0] = irandom_range(900, 1800);

// create the vespa
xx = tile_size * 6 + tile_size/4;
yy = tile_size * 0 + tile_size/4;
show_message("Paparazzi sent! " + string(xx) + ", " + string(yy));

global.inst_paparazzi = instance_create_layer(xx, yy, "Instances", obj_vespa);


