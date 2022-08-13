/// @description Insert description here
// You can write your code in this editor

// Load Scooter icon
// Put this in tile row 1, column 7, centered

// this bit seems stupid, replace with macros
global.tile_size = 128;
tile_size = global.tile_size;

xx = tile_size * 6 + tile_size/4;
yy = tile_size * 0 + tile_size/4;

// make the scooter do it's thing
// eventually this becomes a script to call "whenever"

// start the scooter
global.inst_scooter = instance_create_layer(xx, yy,"Instances", obj_scooter);
global.inst_scooter.speed = 2;
global.inst_scooter.direction = 270;
global.inst_scooter.image_angle = 270;

// offset exhaust to be a little more north of the scooter
// start the puff puff
xx = xx;
yy = yy - 96;
global.inst_puff = instance_create_layer(xx, yy, "Instances", obj_scooter_puff);
global.inst_puff.speed = 2;
global.inst_puff.direction = 270;
puff_index = 0;

// create the UI surface

global.ui_enabled = true;
global.ui_surf = -1;

//scr_generate_like_ballons();
