/// @description Insert description here
// You can write your code in this editor

// capture flick event
flickVelX = event_data[?"diffX"];
flickVelY = event_data[?"diffY"];
speed =  abs(flickVelY);

//show_message_async("Flick!" + " " + "DiffX: " + string(flickVelX) + " " + "Diffy: " + string(flickVelY));