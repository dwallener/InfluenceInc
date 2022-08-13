// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_generate_like_ballons(){

	number_of_balloons = 10;
	balloon_array = array_create(number_of_balloons, 0);

	for (var i = 0; i < number_of_balloons; i++) {
		balloon_array[i] = instance_create_layer(x, y, "Balloons", obj_like_balloon,
		{
			x : irandom_range(200, 800),
			y : irandom_range(2040,2200),
			speed : irandom_range(5, 15),
			direction : irandom_range(70,110)
		});
	}

}