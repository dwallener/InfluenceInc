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
draw_text (100, 500, "Research");
// to save on typing
var rs = global.researches;
var rss = global.research_status;
var rn = "";

// Tier 1
draw_set_font (font_droid_22);
draw_text (100, 600, "Tier 1");
// four researches in tier
rn = rs[0][$ "name"];
draw_text (100, 640, (rn + " : " + string(rss[0])));
draw_plus_box(600, 645, c_red);
rn = rs[1][$ "name"];
draw_text (100, 670, (rn + " : " + string(rss[1])));
draw_plus_box(600, 675, c_red);
rn = rs[2][$ "name"];
draw_text (100, 700, (rn + " : " + string(rss[2])));
draw_plus_box(600, 705, c_red);
rn = rs[3][$ "name"];
draw_text (100, 730, (rn + " : " + string(rss[3])));
draw_plus_box(600, 735, c_red);


// Tier 2
draw_set_font (font_droid_22);
draw_text (100, 800, "Tier 2");
// five researches in tier
rn = rs[4][$ "name"];
draw_text (100, 840, (rn + " : " + string(rss[4])));
draw_plus_box(600, 845, c_red);
rn = rs[5][$ "name"];
draw_text (100, 870, (rn + " : " + string(rss[5])));
draw_plus_box(600, 875, c_red);
rn = rs[6][$ "name"];
draw_text (100, 900, (rn + " : " + string(rss[6])));
draw_plus_box(600, 905, c_red);
rn = rs[7][$ "name"];
draw_text (100, 930, (rn + " : " + string(rss[7])));
draw_plus_box(600, 935, c_red);
rn = rs[8][$ "name"];
draw_text (100, 960, (rn + " : " + string(rss[8])));
draw_plus_box(600, 965, c_red);

// Tier 3
draw_set_font (font_droid_22);
draw_text (100, 1010, "Tier 3");
// five researches in tier
rn = rs[4][$ "name"];
draw_text (100, 1050, (rn + " : " + string(rss[9])));
draw_plus_box(600, 1055, c_red);
rn = rs[5][$ "name"];
draw_text (100, 1080, (rn + " : " + string(rss[10])));
draw_plus_box(600, 1085, c_red);
rn = rs[6][$ "name"];
draw_text (100, 1110, (rn + " : " + string(rss[11])));
draw_plus_box(600, 1115, c_red);
rn = rs[7][$ "name"];
draw_text (100, 1140, (rn + " : " + string(rss[12])));
draw_plus_box(600, 1145, c_red);
rn = rs[8][$ "name"];
draw_text (100, 1170, (rn + " : " + string(rss[13])));
draw_plus_box(600, 1175, c_red);


// Tier 4
draw_set_font (font_droid_22);
draw_text (100, 1220, "Tier 4");
// five researches in tier
rn = rs[4][$ "name"];
draw_text (100, 1260, (rn + " : " + string(rss[14])));
draw_plus_box(600, 1265, c_red);
rn = rs[5][$ "name"];
draw_text (100, 1290, (rn + " : " + string(rss[15])));
draw_plus_box(600, 1295, c_red);
rn = rs[6][$ "name"];
draw_text (100, 1320, (rn + " : " + string(rss[16])));
draw_plus_box(600, 1325, c_red);
rn = rs[7][$ "name"];
draw_text (100, 1350, (rn + " : " + string(rss[17])));
draw_plus_box(600, 1355, c_red);
rn = rs[8][$ "name"];
draw_text (100, 1380, (rn + " : " + string(rss[18])));
draw_plus_box(600, 1385, c_red);


// Tier 5
draw_set_font (font_droid_22);
draw_text (100, 1430, "Tier 5");

// Tier 6
draw_set_font (font_droid_22);
draw_text (700, 600, "Tier 6");

// Tier 7
draw_set_font (font_droid_22);
draw_text (700, 800, "Tier 7");

// Tier 8
draw_set_font (font_droid_22);
draw_text (700, 1010, "Tier 8");

// Tier 9
draw_set_font (font_droid_22);
draw_text (700, 1220, "Tier 9");

// Tier 10
draw_set_font (font_droid_22);
draw_text (700, 1430, "Tier 10");

// Tier 11

// Tier 12


