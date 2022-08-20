/// @description Insert description here
// You can write your code in this editor

visible = true;
speed = 2;
direction = 270;
image_angle = 270;

// set up pulsing
pulse_step = 0;
image_xscale = 0.5;
image_yscale = 0.5;

// start the putt putt
scooter_snd = audio_play_sound(snd_motorcycle_idle_01, 20, true);
audio_sound_gain(scooter_snd, 1, 0);

