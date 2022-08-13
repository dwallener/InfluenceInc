/// @description Insert description here
// You can write your code in this editor

// Load Scooter icon
// Put this in tile row 1, column 7, centered

// this bit seems stupid, replace with macros
global.tile_size = 128;
tile_size = global.tile_size;

xx = tile_size * 6 + tile_size/4;
yy = tile_size * 0 + tile_size/4;
global.inst_scooter = instance_create_layer(xx, yy,"Instances", obj_scooter);
global.inst_scooter.speed = 1;
global.inst_scooter.direction = 270;
