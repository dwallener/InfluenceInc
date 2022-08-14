/// @description Insert description here
// You can write your code in this editor

global.flash = instance_create_layer(x, y, "Instances", obj_camera_flash);

// set fade alarm
alarm[1] = 2;

// reset flash alarm
alarm[0] = irandom_range(90, 450);
