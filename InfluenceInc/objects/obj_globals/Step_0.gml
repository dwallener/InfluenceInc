/// @description Insert description here
/// @function		scr_define_research_upgrade_button_locations(tier, tier_index)
/// @param {index}	the research tier we're looking at
/// @param {index}	the research index inside that tier



// update farm value
//global.farm_value = 30000 * global.accounting_tricks * global.egg_value * global.laying_rate * global.earnings_bonus * power((global.chicken_running_bonus - 4), 0.25) * global.egg_level_bonus * (global.Pe + 0.2 * global.Pu + power(global.Pv, 0.6) + 0.25 * global.Pp);

// time scale - rates are per minute, 30 fps
var time_scale = 60 * 30

// update chickens - step is 30 fps, hatching rate is per minute
var hatched = global.hatching_rate / time_scale;
global.chickens += hatched;

// update eggs step is 30 fps, laying rate is per minute
var layed = global.laying_rate / time_scale;
var shipped = global.shipping_rate / time_scale;
// can't sell more than can be shipped, rest goes into the ether
global.eggs += min (layed, shipped);

// update henhouse capacity
global.chicken_capacity = 0;
global.chicken_capacity += global.henhouse_capacities[global.henhouses[0]];
global.chicken_capacity += global.henhouse_capacities[global.henhouses[1]];
global.chicken_capacity += global.henhouse_capacities[global.henhouses[2]];
global.chicken_capacity += global.henhouse_capacities[global.henhouses[3]];

// update the bank account
global.dollars += min(layed, shipped) * global.egg_value;

//
global.P = global.chickens;
global.Pe = global.P * min(1, (global.shipping_rate/global.laying_rate));
global.Pu = global.P - global.Pe;
global.Pv = max((global.chicken_capacity - global.chickens), 0);
global.Pp = global.hatching_rate * global.max_away_time;

// 18 possible egg levels
global.egg_level_bonus = global.egg_level + 2; // 2 .. 20
global.egg_value = global.egg_value_array[global.egg_level];

global.P = global.chickens;
global.Pe = global.P * min(1, (global.shipping_rate/global.laying_rate));
global.Pu = global.P - global.Pe;
global.Pv = global.chicken_capacity - global.chickens;
global.Pp = global.hatching_rate * global.max_away_time;

global.farm_value = 30000 * global.accounting_tricks * global.egg_value * global.laying_rate * global.earnings_bonus * max(1, power((global.chicken_running_bonus - 4), 0.25)) * global.egg_level_bonus * (global.Pe + 0.2 * global.Pu + power(global.Pv, 0.6) + 0.25 * global.Pp);

trucks = global.trucks;
levels = global.truck_levels;
capacities = global.truck_capacities;

global.shipping_capacity =	capacities[trucks[0]] +
							capacities[trucks[1]] +
							capacities[trucks[2]] +
							capacities[trucks[3]] +
							capacities[trucks[4]] +
							capacities[trucks[5]] +
							capacities[trucks[6]] +
							capacities[trucks[7]] +
							capacities[trucks[8]] +
							capacities[trucks[9]] +
							capacities[trucks[10]] +
							capacities[trucks[11]]; 
						
						