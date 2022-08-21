// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_print_SI_num(big_number){
	
	si_suffix = ["k", "M", "B", "T", "q", "Q", "s", "S", "o", "N", "d"];
	
	small_string = string(big_number);
	
	if (big_number > 1000000000000000000000000000000000) {
		small_string = string(floor(big_number/1000000000000000000000000000000000)) + si_suffix[10];
	}
	if (big_number > 1000000000000000000000000000000) {
		small_string = string(floor(big_number/1000000000000000000000000000000)) + si_suffix[9];
	}
	if (big_number > 1000000000000000000000000000) {
		small_string = string(floor(big_number/1000000000000000000000000000)) + si_suffix[8];
	}
	if (big_number > 1000000000000000000000000) {
		small_string = string(floor(big_number/1000000000000000000000000)) + si_suffix[7];
	}
	if (big_number > 1000000000000000000000) {
		small_string = string(floor(big_number/1000000000000000000000)) + si_suffix[6];
	}
	if (big_number > 1000000000000000000) {
		small_string = string(floor(big_number/1000000000000000000)) + si_suffix[5];
	}
	if (big_number > 1000000000000000) {
		small_string = string(floor(big_number/1000000000000000)) + si_suffix[4];
	}
	if (big_number > 1000000000000) {
		small_string = string(floor(big_number/1000000000000)) + si_suffix[3];
	}
	if (big_number > 1000000000) {
		small_string = string(floor(big_number/1000000000)) + si_suffix[2];
	}
	if (big_number > 1000000) {
		small_string = string(floor(big_number/1000000)) + si_suffix[1];
	}
	if (big_number > 1000) {
		small_string = string((big_number/1000)) + si_suffix[0];
	}
	
	return small_string;

}