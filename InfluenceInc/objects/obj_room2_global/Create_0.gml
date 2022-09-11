/// @description Insert description here
// You can write your code in this editor

// From here, the tileset should be loaded, the tilemap should be painted
// Two invisible objects exist - obj_room2_globals and obj_room2_game

global.tile_size = 128;
tile_size = global.tile_size;

// Load Research icon
// Put this in tile column 8, row 2 centered

xx = tile_size * 7 + tile_size/2;
yy = tile_size * 2 - tile_size/2;
draw_set_color(c_white);
draw_circle(xx, yy, 40, false);
inst_icon_research = instance_create_layer(xx, yy, "Instances", obj_icon_research);

// Load Chicken icon
// Put this in tile column 8, row 3 centered
xx = tile_size * 7 + tile_size/2;
yy = tile_size * 3 - tile_size/2;
draw_set_color(c_white);
draw_circle(xx, yy, 40, false);
inst_icon_chicken = instance_create_layer(xx, yy, "Instances", obj_icon_chicken);


// constants, like coordinates for UI elements
global.followers_x = 315;
global.followers_y = 93;
global.total_followers_inc = 100;

// start setting up Economy values
// value per like, this is defined by player level
global.ecpm_values = [	0.25, 
						1.25, 
						6.25, 
						30, 
						150, 
						700, 
						3000, 
						12500, 
						50000, 
						175000, 
						525000, 
						1500000, 
						10000000,
						1000000000,
						100000000000,
						1000000000000,
						15000000000000,
						100000000000000,
						0.0];
global.player_level = 0; // the current player level
global.ecpm_value = global.ecpm_values[global.player_level];
global.cash = 0;

// base rate is one impression every 30 seconds
global.impression_growth_rate = 1/30;

// impressions - start with 0
global.impressions = 0;

// current earnings rate
global.earnings_per_s = 0;