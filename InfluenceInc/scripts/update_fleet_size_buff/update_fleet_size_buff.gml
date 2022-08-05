/// @description		calculates fleet size stuff using static json data
/// @function			update_fleet_size_buff
/// @param {rs}			struct holding static json details on each research
/// @param {rss}		array holding buff levels by research index 0..77

function update_fleet_size_buff(rs, rss) {
	// What's needed from researches JSON?
	// Which research IDs apply
	// level done at each tier
	
	var buffs_on = [12, 22, 25, 29, 41, 51];
	var buff = 0;
	var i = 0;
	for (i = 0; i < array_length_1d(buffs_on); i++) {
		buff += rs[buffs_on[i]][$ per_level] * rss[buffs_on[i]];
	}
	return buff;
}
