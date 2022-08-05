
// this should always be true since it's in a left button press event

if (mouse_check_button_pressed(mb_left)) {

	//show_message ("Mouse click! At: " + string(mouse_x) + ", " + string(mouse_y));

	// save coordinates
	var xx = mouse_x;
	var yy = mouse_y;
	
	// set up the hitbox with defaults
	var hitbox =
	{
		x : 0,
		y : 0,
		size : 30
	}
	
	// check coordinates
	hitbox = scr_define_research_upgrade_button_locations(1, 1);
	//show_message("x: " + string(hitbox.x) + "y: " + string(hitbox.y) + "size: " + string(hitbox.size));
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.research_upgraded.tier = 1;
		global.research_upgraded.index = 1;
		global.research_status[0] += 1;
		//show_message ("Mouse click! At: " + string(mouse_x) + ", " + string(mouse_y));
	}
	hitbox = scr_define_research_upgrade_button_locations(1, 2);
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.research_upgraded.tier = 1;
		global.research_upgraded.index = 1;
		global.research_status[1] += 1;
		//show_message ("Mouse click! At: " + string(mouse_x) + ", " + string(mouse_y));
	}
	hitbox = scr_define_research_upgrade_button_locations(1, 3);
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.research_upgraded.tier = 1;
		global.research_upgraded.index = 1;
		global.research_status[2] += 1;
		//show_message ("Mouse click! At: " + string(mouse_x) + ", " + string(mouse_y));
	}
	hitbox = scr_define_research_upgrade_button_locations(1, 4);
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.research_upgraded.tier = 1;
		global.research_upgraded.index = 1;
		global.research_status[3] += 1;
		//show_message ("Mouse click! At: " + string(mouse_x) + ", " + string(mouse_y));
	}

}
