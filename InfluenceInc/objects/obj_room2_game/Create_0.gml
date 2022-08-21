/// @description Insert description here
// You can write your code in this editor


// Place the main UI panel
global.inst_ui_main = instance_create_layer(0, 15, "Instances", obj_main_ui);

// start background music
bg_music = audio_play_sound(snd_bg_1_komiko_shopping, 10, true);
audio_sound_gain(bg_music, 0.35, 0);

// Load Scooter icon
// Put this in tile row 1, column 7, centered

// this bit seems stupid, replace with macros
global.tile_size = 128;
tile_size = global.tile_size;

xx = tile_size * 6 + tile_size/4;
yy = tile_size * 0 + tile_size/4;

// make the scooter do it's thing
// eventually this becomes a script to call "whenever"


// create the UI surface
global.ui_enabled = true;
global.ui_surf = -1;

// this stores which UI panel we want to make/populate
global.ui_panel = "";

// these don't exist until they are created
global.inst_gui_1 = -1;
global.inst_gui_2 = -1;
global.inst_gui_3 = -1;


// Send paparazzi alarm
alarm[0] = irandom_range(30, 300);

// Ok let's start the math...

global.total_followers = 0;