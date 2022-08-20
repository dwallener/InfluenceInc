/// @description Insert description here
// You can write your code in this editor

// This is all scooter stuff - needs to be put in a script, too many words in here
// Also add random launching of the scooter, from multiple directions

var lcl_speed = 128;
// kill the instances if they go offscreen - exit is out the west
if (instance_exists(global.inst_scooter) & instance_exists(global.inst_vespa)) {
	if (global.inst_scooter.x >= 0) {
		scr_scooter_movement_demo(lcl_speed, global.inst_scooter, global.inst_puff);
		scr_scooter_movement_demo(lcl_speed, global.inst_vespa, global.inst_puff);

		// Move this to the scooter/vespa object
		// spin through a 15 step sequence of changing the scooter exhaust
		puff_index++;

		// for temp storing of coordinates
		puff_x = global.inst_puff.x;
		puff_y = global.inst_puff.y;

		// use fall through feature of 'switch' to change the sprite
		// save current location, direction, speed of puff, because we are going to destroy it
		puff_direction = global.inst_puff.direction;
		puff_speed = global.inst_puff.speed;
		puff_x = global.inst_puff.x;
		puff_y = global.inst_puff.y;

		switch(puff_index % 15) {
			case 0 : 
				break;
			case 1 :
				global.inst_puff.visible = false;
				break;
			case 2 :
				break;
			case 3 : 
				object_set_sprite(obj_scooter_puff, spr_puff_small); 
				instance_destroy(global.inst_puff); 
				global.inst_puff = instance_create_layer(puff_x, puff_y, "Instances", obj_scooter_puff);
				global.inst_puff.direction = puff_direction;
				global.inst_puff.speed = puff_speed;
				global.inst_puff.x = puff_x;
				global.inst_puff.y = puff_y;
				break;
			case 4 :
				break;
			case 5 :
				global.inst_puff.visible = false;
				break;
			case 6 : 
				break;
			case 7 :
				object_set_sprite(obj_scooter_puff, spr_puff_big); 
				instance_destroy(global.inst_puff); 
				global.inst_puff = instance_create_layer(puff_x, puff_y, "Instances", obj_scooter_puff);
				global.inst_puff.direction = puff_direction;
				global.inst_puff.speed = puff_speed;
				global.inst_puff.x = puff_x;
				global.inst_puff.y = puff_y;
				break;
			case 8 :
			case 9 :
				global.inst_puff.visible = false;
				break;
			case 10 : 
				break;	
			case 11 :
				object_set_sprite(obj_scooter_puff, spr_puff_small); 
				instance_destroy(global.inst_puff); 
				global.inst_puff = instance_create_layer(puff_x, puff_y, "Instances", obj_scooter_puff);
				global.inst_puff.direction = puff_direction;
				global.inst_puff.speed = puff_speed;
				global.inst_puff.x = puff_x;
				global.inst_puff.y = puff_y;
				break;
			case 12 :
			case 13 :
				global.inst_puff.visible = false;
				break;
			case 14 :
				break;		
			case 15 :
				object_set_sprite(obj_scooter_puff, spr_puff_big); 
				instance_destroy(global.inst_puff); 
				global.inst_puff = instance_create_layer(puff_x, puff_y, "Instances", obj_scooter_puff);
				global.inst_puff.direction = puff_direction;
				global.inst_puff.speed = puff_speed;
				global.inst_puff.x = puff_x;
				global.inst_puff.y = puff_y;
				break;
			default: break;
		}
	}
	else {
		// destroy the instances
		instance_destroy(global.inst_scooter);
		instance_destroy(global.inst_vespa);
		instance_destroy(global.inst_puff);
	}
}


