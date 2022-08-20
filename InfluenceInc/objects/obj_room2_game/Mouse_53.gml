/// @description Insert description here
// You can write your code in this editor

// Look for hitboxes
// Leverage tile detector - convert mouse location to tile index

if (mouse_check_button_pressed(mb_left)) {

	// save coordinates
	var xx = mouse_x;
	var yy = mouse_y;
	
	tile_clicked = [0, 0]; // row, col
	tile_clicked = scr_get_tile_coords (xx, yy);

	// make the hitboxes for menu items tile-size big (this will be refined as tile size drops
	
	switch (tile_clicked[0]) { // row
		case 0 : // row 0
			switch (tile_clicked[1]) { // col
				// row 0 is empty until col 7
				case 0 :
				case 1 :
				case 2 :
				case 3 :
				case 4 :
				case 5 :
				case 6 : break;
				case 7 : // research icon!
				default : break;
			}
			break;
		case 1 : // row 1
			switch (tile_clicked[1]) { // col
				// row 0 is empty until col 7
				case 0 : 
				case 1 : // Yard 0, 0
					global.ui_panel("HenHouse1");
					scr_draw_UI_panel(global.ui_panel);
					break;
				case 2 : // Yard 0, 1
					global.ui_panel("HenHouse2");
					scr_draw_UI_panel(global.ui_panel);
					break;
				case 3 : // na
				case 4 : // na
				case 5 : // na
				case 6 : break;
				case 7 : // chicken icon!
					global.ui_panel = "Research";
					global.inst_gui_1 = instance_create_depth(0, 600, -15997, obj_gui_1 );
					break;
				default : break;
			}
			break;
		case 2 : 
			switch (tile_clicked[1]) { // col
				// row 0 is empty until col 7
				case 0 : 
				case 1 : // Yard 1, 0
					scr_draw_standard_UI_panel(150, 850, (1024-150), (2048-350), 50, 50, false, c_white );
					break;
				case 2 : // Yard 1, 1
					scr_draw_standard_UI_panel(150, 850, (1024-150), (2048-350), 50, 50, false, c_white );
					break;
				case 3 : // Patio
					scr_draw_standard_UI_panel(150, 850, (1024-150), (2048-350), 50, 50, false, c_white );
					break;
				case 4 : // na
				case 5 : // na
				case 6 : // na
					break;
				case 7 : // na
					global.ui_panel = "Boost";
					global.inst_gui_1 = instance_create_depth(0, 600, -15997, obj_gui_1 );
					break;
				default : break;
			}
			break;
		case 3 : 
			switch (tile_clicked[1]) { // col
				// row 0 is empty until col 7
				case 0 : 
				case 1 : // na
					break;
				case 2 : // House
					scr_draw_standard_UI_panel(150, 850, (1024-150), (2048-350), 50, 50, false, c_white );
					break;					
				case 3 : // Pool
					scr_draw_standard_UI_panel(150, 850, (1024-150), (2048-350), 50, 50, false, c_white );
					break;
				case 4 : // na
				case 5 : // na
				case 6 : // na
				case 7 : // na
					break;
				default : break;
			}
			break;
		default : break;
	}
	
}



