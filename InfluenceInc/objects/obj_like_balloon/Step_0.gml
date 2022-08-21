/// @description Insert description here
// You can write your code in this editor

// tweak direction to head towards the destination point
// initially starts as random[70,110]

// ETA
eta = abs(y-destination[1]) / vspeed;

direction += floor((direction - point_direction(x,y,destination[0],destination[1])) / eta);

// stop when we arrive
x_threshold = 64;
y_threshold = 64;
if (abs(x-destination[0]) < x_threshold) { hspeed = 0; }
if (abs(y-destination[1]) < y_threshold) { vspeed = 0; }

if (hspeed = 0) & (vspeed = 0) {
	balloon_arrived = true;
}
// just have it oscillate a bit...
if (balloon_arrived = true) {
	hspeed = 1;
	vspeed = 1;
	direction = irandom_range(0, 359);
}


