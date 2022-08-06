
// this should always be true since it's in a left button press event

if (mouse_check_button_pressed(mb_left)) {

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
	
	///////////////////////////////////////////////////////////////////////
	// Research hitboxes
	
	// check coordinates
	hitbox = scr_define_research_upgrade_button_locations(1, 1);
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.research_upgraded.tier = 1;
		global.research_upgraded.index = 1;
		global.research_status[0] += 1;
	}
	hitbox = scr_define_research_upgrade_button_locations(1, 2);
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.research_upgraded.tier = 1;
		global.research_upgraded.index = 1;
		global.research_status[1] += 1;
	}
	hitbox = scr_define_research_upgrade_button_locations(1, 3);
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.research_upgraded.tier = 1;
		global.research_upgraded.index = 1;
		global.research_status[2] += 1;
	}
	hitbox = scr_define_research_upgrade_button_locations(1, 4);
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.research_upgraded.tier = 1;
		global.research_upgraded.index = 1;
		global.research_status[3] += 1;
	}

	///////////////////////////////////////////////////////////////
	// Henhouse hitboxes
	
	// check coordinates
	hitbox = scr_henhouse_upgrade_button_locations(1);

	// Henhouse 1 - the house
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.henhouses[0] += 1;
		scr_display_henhouse_1(global.henhouses[0]);
	}
	
	// Henhouse 2 - the pool
	hitbox = scr_henhouse_upgrade_button_locations(2);
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.henhouses[1] += 1;
		scr_display_henhouse_2(global.henhouses[1]);
	}
	
	// Henhouse 3 - the patio
	hitbox = scr_henhouse_upgrade_button_locations(3);
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.henhouses[2] += 1;
		scr_display_henhouse_3(global.henhouses[2]);
	}
	
	hitbox = scr_henhouse_upgrade_button_locations(4);
	if point_in_rectangle(xx, yy, hitbox.x, hitbox.y, hitbox.x+hitbox.size, hitbox.y+hitbox.size) {
		global.henhouses[3] += 1;
	}
	
	

}
