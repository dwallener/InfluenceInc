/// @description Insert description here
// You can write your code in this editor

alarm[0] = 300;
alarm[1] = 1;

// destination is the center of the house patch
destination = [256, 256];
// let's randomize it a bit
destination[0] += irandom_range(-64, 64);
destination[1] += irandom_range(-64, 64);

balloon_arrived = false;
