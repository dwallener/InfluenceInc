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


