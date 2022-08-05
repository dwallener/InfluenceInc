/// @description		calculates shipping capacity research stuff using static json data
/// @function			update_shipping_capacity_buff
/// @param {rs}			struct holding static json details on each research
/// @param {rss}		array holding buff levels by research index 0..77

function update_shipping_capacity_buff() {
	
	buffs_on = [11, 21, 27, 30, 33, 37, 45, 52, 55, 74];
	buff = 0;
	var i = 0;
	for (i = 0; i < array_length_1d(buffs_on); i++) {
		buff += rs[buffs_on[i]][$ per_level] * rss[buffs_on[i]];
	}

	return buff;
}