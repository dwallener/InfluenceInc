// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_draw_UI_panel(ui_panel){
	
	// set up bits common to all
	
	// Let's drop the Surface creation for now
/*	
	// set the surface, create if it doesn't already exist
	if (!surface_exists(global.ui_surf) ) {
		global.ui_surf = surface_create ( 1024, 2048);
	}
	surface_set_target(global.ui_surf);
	draw_clear_alpha(c_black, 0);
*/	
	// set up bits unique to each	
	switch (ui_panel) {
		case "Research" :
			inst_ui_panel = instance_create_layer(0, 0, "Instances", obj_ui_panel_white);
			break;
		case "Chicken" :
			inst_ui_panel = instance_create_layer(0, 0, "Instances", obj_ui_panel_white);
			break;
		case "HenHouse1" :
			inst_ui_panel = instance_create_layer(0, 0, "Instances", obj_ui_panel_white);
			break;
		case "HenHouse2" :
			inst_ui_panel = instance_create_layer(0, 0, "Instances", obj_ui_panel_white);
			break;
		case "HenHouse3" :
			inst_ui_panel = instance_create_layer(0, 0, "Instances", obj_ui_panel_white);
			break;
		case "HenHouse4" :
			inst_ui_panel = instance_create_layer(0, 0, "Instances", obj_ui_panel_white);
			break;		
		case "Silo1"	:
			inst_ui_panel = instance_create_layer(0, 0, "Instances", obj_ui_panel_white);
			break;		
		case "Silo2"	:
			inst_ui_panel = instance_create_layer(0, 0, "Instances", obj_ui_panel_white);
			break;		
		case "Silo3"	:
			inst_ui_panel = instance_create_layer(0, 0, "Instances", obj_ui_panel_white);
			break;		
		case "Silo4"	:
			inst_ui_panel = instance_create_layer(0, 0, "Instances", obj_ui_panel_white);
			break;		
		case "Shipping"	:
			inst_ui_panel = instance_create_layer(0, 0, "Instances", obj_ui_panel_white);
			break;		
		default : break;
	}

/*
	// return to normal surface, draw stuff
	surface_reset_target();
	draw_surface_ext(global.ui_surf, 0, 0, 1, 1, 0, c_white, 0.5);
*/

}