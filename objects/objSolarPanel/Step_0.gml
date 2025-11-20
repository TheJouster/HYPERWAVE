/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if instance_exists(objStorage){
	var nearest = instance_nearest(x,y,objStorage)
	if point_distance(point_x,point_y,nearest.point_x,nearest.point_y) < 24*8{
		if alarm[0] < 0{
			alarm[0] = 60
		}
	}
}

if hp <= 0{
	audio_play_sound(sndExplosion,1,0)
	instance_destroy()
}

