// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_draw_UI_panel(ui_panel){
	
	// set up bits common to all
	
	// set the surface, create if it doesn't already exist
	if (!surface_exists(global.ui_surf) ) {
		global.ui_surf = surface_create ( 1024, 2048 );
	}
	surface_set_target(global.ui_surf);
	draw_set_color(c_white);
	
	// set up bits unique to each	
	switch (ui_panel) {
		case "Research" :
			scr_draw_standard_UI_panel(150, 150, (1024-150), (2048-150), 50, 50, false, c_white );
			break;
		case "Chicken" :
			scr_draw_standard_UI_panel(150, 150, (1024-150), (2048-150), 50, 50, false, c_white );
			break;
		case "HenHouse1" :
			scr_draw_standard_UI_panel(150, 150, (1024-150), (2048-150), 50, 50, false, c_white );
			break;
		case "HenHouse2" :
			scr_draw_standard_UI_panel(150, 150, (1024-150), (2048-150), 50, 50, false, c_white );
			break;
		case "HenHouse3" :
			scr_draw_standard_UI_panel(150, 150, (1024-150), (2048-150), 50, 50, false, c_white );
			break;
		case "HenHouse4" :
			scr_draw_standard_UI_panel(150, 150, (1024-150), (2048-150), 50, 50, false, c_white );
			break;		
		case "Silo1"	:
			scr_draw_standard_UI_panel(150, 150, (1024-150), (2048-150), 50, 50, false, c_white );
			break;		
		case "Silo2"	:
			scr_draw_standard_UI_panel(150, 150, (1024-150), (2048-150), 50, 50, false, c_white );
			break;		
		case "Silo3"	:
			scr_draw_standard_UI_panel(150, 150, (1024-150), (2048-150), 50, 50, false, c_white );
			break;		
		case "Silo4"	:
			scr_draw_standard_UI_panel(150, 150, (1024-150), (2048-150), 50, 50, false, c_white );
			break;		
		case "Shipping"	:
			scr_draw_standard_UI_panel(150, 150, (1024-150), (2048-150), 50, 50, false, c_white );
			break;		
		default : break;
	}

	// return to normal surface, draw stuff
	surface_reset_target();
	draw_surface(global.ui_surf, 0, 0);


}