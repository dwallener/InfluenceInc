/// @description Insert description here
// You can write your code in this editor


//////////////////////////////////////////////////////////////////////////////////////////////
// The "Add Chickens" button

draw_set_color (c_red);
draw_rectangle (3200,500,3700,600, false);
draw_set_color(c_white);
draw_text (3250, 525, "(SPC) +Chickens");

//////////////////////////////////////////////////////////////////////////////////////////////
// Basic data
// Let's see the chickens and dollars flow

var farm_value = global.farm_value;
var chickens = global.chickens;
var dollars = global.dollars;

draw_set_color (c_red);

draw_text (100, 50, "Farm Value: " + string(farm_value));
draw_text (100, 90, "Chickens:   " + string(chickens));
draw_text (100, 130, "Dollars:    " + string(dollars));
draw_text (100, 170, "Egg Value:  " + string(global.egg_value));

// Let's get all the interim numbers up
draw_set_font(font_droid_22);
draw_text (100, 220, "P     : " + string(global.P));
draw_text (100, 250, "Pe    : " + string(global.Pe));
draw_text (100, 280, "Pu    : " + string(global.Pu));
draw_text (100, 310, "Pv    : " + string(global.Pv));
draw_text (100, 340, "Pp    : " + string(global.Pp));

//////////////////////////////////////////////////////////////////////////////////////
// Identify each farm component

//////////////////////////////////////////////////////////////////////////////////////
// Henhouses, With upgrade buttons

draw_text (1150, 300, "Henhouse");
draw_text (1150, 335, global.henhouse_levels[global.henhouses[0]]);
draw_rectangle (1150,390,1300,450,false);
draw_set_color (c_white);
draw_text (1160, 395, "Upgrade");
draw_set_color (c_red);

draw_text (1550, 300, "Henhouse");
draw_text (1550, 335, global.henhouse_levels[global.henhouses[1]]);
draw_rectangle (1550,390,1700,450,false);
draw_set_color (c_white);
draw_text (1560, 395, "Upgrade");
draw_set_color (c_red);

draw_text (2000, 300, "Henhouse");
draw_text (2000, 335, global.henhouse_levels[global.henhouses[2]]);
draw_rectangle (2000,390,2150,450,false);
draw_set_color (c_white);
draw_text (2010, 395, "Upgrade");
draw_set_color (c_red);

draw_text (2500, 300, "Henhouse");
draw_text (2500, 335, global.henhouse_levels[global.henhouses[3]]);
draw_rectangle (2500,390,2650,450,false);
draw_set_color (c_white);
draw_text (2500, 395, "Upgrade");
draw_set_color (c_red);

///////////////////////////////////////////////////////////////////////////////////////////
// Silos
// Will need to add buttons to add silos...later, lol

draw_set_color (c_white);
draw_text (1100, 1000, "Silo");
draw_text (1100, 1400, "Silo");
draw_text (1500, 1000, "Silo");
draw_text (1500, 1400, "Silo");

// Hatchery
draw_text (2100, 1200, "Hatchery");

// Shipping
draw_text (2100, 1500, "Shipping");
draw_text (2100, 1535, "Capacity: " + string(global.shipping_capacity));

// Launchpad
draw_text (2570, 1370, "Launchpad");

// Fueling
draw_text (2950, 1370, "Fueling");

// Artifacts
draw_text (2570, 950, "Artifacts");


/////////////////////////////////////////////////////////////////////////////////////
// Research - this is a bit more complicated
// Static data is stored in JSON that's read on CREATE

draw_set_font (font_droid_36);
draw_text (100, 600, "Research");
// to save on typing
var rs = global.researches;
var rn = "";

// Tier 1
draw_set_font (font_droid_22);
draw_text (100, 650, "Tier 1");
// four researches in tier
rn = rs[0][$ "name"];
draw_text (100, 690, rn);
rn = rs[1][$ "name"];
draw_text (100, 720, rn);
rn = rs[2][$ "name"];
draw_text (100, 750, rn);
rn = rs[3][$ "name"];
draw_text (100, 780, rn);

// Tier 2
draw_set_font (font_droid_22);
draw_text (100, 850, "Tier 2");
// five researches in tier
rn = rs[4][$ "name"];
draw_text (100, 890, rn);
rn = rs[5][$ "name"];
draw_text (100, 920, rn);
rn = rs[6][$ "name"];
draw_text (100, 950, rn);
rn = rs[7][$ "name"];
draw_text (100, 980, rn);
rn = rs[8][$ "name"];
draw_text (100, 1010, rn);

// Tier 3
draw_set_font (font_droid_22);
draw_text (100, 1050, "Tier 3");

// Tier 4
draw_set_font (font_droid_22);
draw_text (100, 1250, "Tier 4");

// Tier 5
draw_set_font (font_droid_22);
draw_text (100, 1450, "Tier 5");

// Tier 6
draw_set_font (font_droid_22);
draw_text (600, 650, "Tier 6");

// Tier 7
draw_set_font (font_droid_22);
draw_text (600, 850, "Tier 7");

// Tier 8
draw_set_font (font_droid_22);
draw_text (600, 1050, "Tier 8");

// Tier 9
draw_set_font (font_droid_22);
draw_text (600, 1250, "Tier 9");

// Tier 10
draw_set_font (font_droid_22);
draw_text (600, 1450, "Tier 10");

// Tier 11

// Tier 12


