/// @description		calculates hatchery size research stuff using static json data
/// @function			update_hatchery_size_buff
/// @param {rs}			struct holding static json details on each research
/// @param {rss}		array holding buff levels by research index 0..77

function update_hatchery_size_buff() {
	// What's needed from researches JSON?
	// Which research IDs apply
	// level done at each tier
	
	buffs_on = [8, 15, 20];
	buff = 0;
	var i = 0;
	for (i = 0; i < array_length_1d(buffs_on); i++) {
		buff += rs[buffs_on[i]][$ per_level] * rss[buffs_on[i]];
	}
	
	return buff;
}
