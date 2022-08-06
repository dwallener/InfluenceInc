/// @description Insert description here
// You can write your code in this editor

// set up GUI font
draw_set_color(c_red);
draw_set_font(font_droid_36);
	
// drop in the original henhouse coop
global.inst_henhouse_1 = instance_create_layer(1000, 100, "Instances", obj_henhouse_coop);
global.inst_henhouse_2 = instance_create_layer(1500, 100, "Instances", obj_pool_coop);



