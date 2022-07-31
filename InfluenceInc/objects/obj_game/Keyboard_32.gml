/// @description Insert description here
// You can write your code in this editor

// start the hatchery

if (global.chicken_capacity > (global.chickens + global.running_chickens)) {
	global.chickens += global.running_chickens;
} else {
	global.chickens = global.chicken_capacity;
}
 
// add buttons/bindings for all the things we will do in game

// update research
// update henhouse
// update shipping


