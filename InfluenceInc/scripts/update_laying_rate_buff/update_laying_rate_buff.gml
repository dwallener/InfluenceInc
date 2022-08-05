/// @description		calculates egg laying rate research stuff using static json data
/// @function			update_laying_rate_buff
/// @param {rs}			struct holding static json details on each research
/// @param {rss}		array holding buff levels by research index 0..77

function update_laying_rate_buff() {

	buffs_on = [1, 17, 24, 36, 48, 56, 73];
	buff = 0;
	var i = 0;
	for (i = 0; i < array_length_1d(buffs_on); i++) {
		buff += rs[buffs_on[i]][$ per_level] * rss[buffs_on[i]];
	}
	
	return buff;
}