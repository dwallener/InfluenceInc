/// @description		draws a red box with a white "+"
/// @function			draw_plus_box
/// @param {x}			x origin
/// @param {y}			y origin
/// @param {box_color}	box_color

function draw_plus_box(x, y, box_color){
	
	draw_set_color (box_color);
	draw_rectangle(x, y, x+30, y+30, false);
	draw_set_color (c_white);
	draw_set_font(font_droid_22);
	draw_text(x+5, y, "+");
}