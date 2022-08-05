// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_fleet_size_buff(rs, rss){
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
