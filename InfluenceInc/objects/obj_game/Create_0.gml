/// @description Insert description here
// You can write your code in this editor

// set up GUI font
draw_set_color(c_red);
draw_set_font(font_droid_36);
	
// drop in the original henhouse coop
global.inst_henhouse_1 = instance_create_layer(1000, 100, "Instances", obj_henhouse_coop);
global.inst_henhouse_2 = instance_create_layer(1500, 100, "Instances", obj_pool_coop);
global.inst_henhouse_3 = instance_create_layer(2000, 100, "Instances", obj_patio_coop);

ui_surf = -1;

// Add upgrade icons

// Research
// x, y, size
global.hitbox_icon_research = [3500, 200, 200];
global.inst_icon_research = instance_create_layer(3500, 200, "Instances", obj_icon_research);
global.show_research_popup = false;

// Chicken hatchery
// x, y, size
global.hitbox_icon_research = [3500, 500, 200];
global.inst_icon_research = instance_create_layer(3500, 500, "Instances", obj_icon_chicken);
global.show_chicken_popup = false;
