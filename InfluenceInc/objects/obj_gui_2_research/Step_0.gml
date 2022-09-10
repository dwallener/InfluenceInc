/// @description Insert description here
// You can write your code in this editor

// current_y++;

// do something if Flick is detected

// up or down?
if (flickVelY > 0.01) {
	direction = 270; // down
	speed *= 0.9;
}
else if (flickVelY < -0.01) {
	direction = 90; // up
	speed *= 0.9;
}
else {
	speed = 0;
	flickVelY = 0;
}

/*
// we only care about vertical
if (flickVelY > 0.05) {
	flickVelY *= 0.7;
}
else {
	flickVelY = 0.00;
}
*/

// translate to 'current_y' so we can use Draw event
if (direction = 270) {
	current_y += speed;
}
if (direction = 90) {
	current_y -= speed;
}
