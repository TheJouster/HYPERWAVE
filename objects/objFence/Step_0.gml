/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

place_left = place_meeting(x-1,y,objFence)
place_right = place_meeting(x+1,y,objFence)
place_up = place_meeting(x,y-1,objFence)
place_down = place_meeting(x,y+1,objFence)

if place_left and place_right{
	sprite_index = sprFenceHorizontal
}else if place_up and place_down{
	sprite_index = sprFenceVertical
}else if place_up and place_left{
	sprite_index = sprFenceBottomRight
}else if place_up and place_right{
	sprite_index = sprFenceBottomLeft
}else if place_down and place_left{
	sprite_index = sprFenceTopRight
}else if place_down and place_right{
	sprite_index = sprFenceTopLeft
}else if place_down and place_right and place_left{
	sprite_index = sprFenceTopSide
}else if place_up and place_right and place_left{
	sprite_index = sprFenceBottomSide
}else if place_up and place_down and place_left{
	sprite_index = sprFenceVerticalRight
}else if place_up and place_down and place_right{
	sprite_index = sprFenceVerticalLeft
}else if place_up and place_down and place_right and place_left{
	sprite_index = sprFenceAll
}else if place_up and !place_down and !place_right and !place_left{
	sprite_index = sprFenceDown
}else if !place_up and place_down and !place_right and !place_left{
	sprite_index = sprFenceUp
}else if !place_up and !place_down and place_right and !place_left{
	sprite_index = sprFenceLeft
}else if !place_up and !place_down and !place_right and place_left{
	sprite_index = sprFenceRight
}else{
	sprite_index = sprFence
}

if hp <= 0{
	audio_play_sound(sndExplosion,1,0)
	instance_destroy()
}