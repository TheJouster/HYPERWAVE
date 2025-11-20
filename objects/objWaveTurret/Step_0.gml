/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if hp <= 0{
	audio_play_sound(sndExplosion,1,0)
	instance_destroy()
}
