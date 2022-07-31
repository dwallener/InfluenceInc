/// @description Insert description here
// You can write your code in this editor


////////////////////////////////////////////////////////////////////////////
// Set up the henhouse data
//

// henhouse levels
global.henhouses = array_create (4, 0);
// initial status
global.henhouses[0] = 0; // coop - technically there should be only one but...

global.henhouse_levels = [	"Coop", 
							"Shack", 
							"Super Shack", 
							"Short House", 
							"Standard",
							"Long House",
							"Double Decker",
							"Warehouse",
							"Center",
							"Bunker",
							"Eggkea",
							"HAB 1000",
							"Hangar",
							"Tower",
							"HAB 10000",
							"Eggtopia",
							"Monolith",
							"Portal",
							"Universe"];
							
global.henhouse_capacities = array_create (18, 0);
global.henhouse_capacities[0] = 250;
global.henhouse_capacities[1] = 500;
global.henhouse_capacities[2] = 1000;
global.henhouse_capacities[3] = 2000;
global.henhouse_capacities[4] = 5000;
global.henhouse_capacities[5] = 10000;
global.henhouse_capacities[6] = 20000;
global.henhouse_capacities[7] = 50000;
global.henhouse_capacities[8] = 100000;
global.henhouse_capacities[9] = 200000;
global.henhouse_capacities[10] = 500000;
global.henhouse_capacities[11] = 1000000;
global.henhouse_capacities[12] = 2000000;
global.henhouse_capacities[13] = 5000000;
global.henhouse_capacities[14] = 10000000;
global.henhouse_capacities[15] = 25000000;
global.henhouse_capacities[16] = 50000000;
global.henhouse_capacities[17] = 100000000;
global.henhouse_capacities[18] = 600000000;


//////////////////////////////////////////////////////////////////////////
// Set up the shipping data
//

// initialize our shipping capacity - this gives us trikes everywhere
// deal with number of vehicle slots later

global.trucks = array_create(12, 0);

global.truck_levels = [	"Trike",
						"Van",
						"Pickup",
						"10 Foot",
						"24 Foot",
						"Semi",
						"Double Semi",
						"Future Semi",
						"Mega Semi",
						"Hover Semi",
						"Quantum Transporter",
						"Hyperloop Train"];

global.truck_capacities = array_create (12, 0);
global.truck_capacities[0] = 5000;
global.truck_capacities[1] = 15000;
global.truck_capacities[2] = 50000;
global.truck_capacities[3] = 100000;
global.truck_capacities[4] = 250000;
global.truck_capacities[5] = 500000;
global.truck_capacities[6] = 1000000;
global.truck_capacities[7] = 5000000;
global.truck_capacities[8] = 15000000;
global.truck_capacities[9] = 30000000;
global.truck_capacities[10] = 50000000;
global.truck_capacities[11] = 50000000;
global.shipping_capacity = 5000; // just an initial default value

/////////////////////////////////////////////////////////////////////////////
// Set up spaceships for Artifact loop - but later, lol
//
					
global.spaceship_levels = [	"Chicken One",
							"Chicken Nine",
							"Chicken Heavy",
							"BCR",
							"Quintillion Chicken",
							"Cornish Hen Corvette",
							"Galeggtica",
							"Defihent",
							"Voyegger",
							"Henerprise"];

//////////////////////////////////////////////////////////////////////////////////
// Set up silos
//

global.silo_1_level = 1; // number of silos
global.silo_2_level = 0;
global.silo_3_level = 0;
global.silo_4_level = 0;
global.per_silo_away_time = 120; // (in minutes)

// max earning time while away from game
// add up silos
total_silos = global.silo_1_level + global.silo_2_level + global.silo_3_level + global.silo_4_level;
global.max_away_time = total_silos * global.per_silo_away_time;

// research is held in a giant JSON, each research in each tier having an ID number
// 78 unique researches in total
// 'researches.json' is local file

// at each index, store the completion level
global.research_status = array_create (78, 0);


// Figure out the farm value
// values we need to compute earnings
global.chickens = 0;
global.hatching_rate = 10; // initial internal hatching rate, per minute
global.laying_rate = 15; // initial laying rate, per minute
global.chicken_capacity = 250; // initial capacity of coop
global.shipping_rate = global.shipping_capacity/60/30; // trike rate is 5000/60
global.running_chickens = 100; // base number of chickens suppliable by hatchery
global.chicken_running_bonus = 4; // hmmm... *** not sure about this one ***
global.earnings_bonus = 1;
global.eggs = 0; // number of eggs
global.dollars = 0; // cash to spend

// these will be generated from research etc bonuses
global.accounting_tricks = 1; // start with no bonuses

// set up the egg values
global.egg_level = 0; // 0 .. 18
global.egg_value_array = [0.25, 1.25, 6.25, 30, 150, 700, 3000, 12500, 50000, 175000, 525000, 1500000, 10000000, 1000000000, 100000000000, 1000000000000, 15000000000000, 100000000000000, 0];
global.egg_value = global.egg_value_array[global.egg_level];

global.P = global.chickens;
global.Pe = global.P * min(1, (global.shipping_rate/global.laying_rate));
global.Pu = global.P - global.Pe;
global.Pv = global.chicken_capacity - global.chickens;
global.Pp = global.hatching_rate * global.max_away_time;

// 18 possible egg levels
global.egg_level_bonus = global.egg_level + 2; // 2 .. 20
global.egg_value = global.egg_value_array[global.egg_level];

global.farm_value = 30000 * global.accounting_tricks * global.egg_value * global.laying_rate * global.earnings_bonus * power((global.chicken_running_bonus - 4), 0.25) * global.egg_level_bonus * (global.Pe + 0.2 * global.Pu + power(global.Pv, 0.6) + 0.25 * global.Pp);

// set up GUI font
draw_set_color(c_red);
draw_set_font(font_droid_36);
						

