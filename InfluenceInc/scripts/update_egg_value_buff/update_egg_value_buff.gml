// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function update_egg_value_buff(rs, rss ) {
	// What's needed from researches JSON?
	// Which research IDs apply
	// level done at each tier
	
	var buffs_on = [2, 7, 9, 16, 18, 24, 28, 31, 34, 38, 40, 43, 46, 47, 50, 53, 54];
	var buff = 0;
	var i = 0;
	for (i = 0; i < array_length_1d(buffs_on); i++) {
		buff += rs[buffs_on[i]][$ per_level] * rss[buffs_on[i]];
	}
	return buff;
}