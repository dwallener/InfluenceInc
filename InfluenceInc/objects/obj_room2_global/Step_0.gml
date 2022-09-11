/// @description Insert description here
// You can write your code in this editor

// calculate current earnings/sec and display that too
var steprate = 30;

// update earnings rate
global.earnings_per_s = global.total_followers * global.impression_growth_rate * global.ecpm_value;

// update cash
global.cash += global.earnings_per_s;

// update growth rate and impressions
global.impression_growth_rate = global.impression_growth_rate;
global.impressions += floor(global.impression_growth_rate/steprate);

// update value
global.ecpm_value = global.ecpm_value;

// actually displaying is in room2_game DRAW


