/// @description Insert description here
// You can write your code in this editor

alarm[0] = irandom_range(90, 450);

scooter_snd = audio_play_sound(snd_motorcycle_idle_01, 20, true);
audio_sound_gain(scooter_snd, 1, 0);

// create a 2nd scooter

global.inst_vespa = instance_create_layer(50, 50, "Instances", )