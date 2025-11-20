/// @description Insert description here
// You can write your code in this editor
place_left = place_meeting(x-1,y,objPavement)
place_right = place_meeting(x+1,y,objPavement)
place_up = place_meeting(x,y-1,objPavement)
place_down = place_meeting(x,y+1,objPavement)
if place_meeting(x,y,objPavement){
	var pavement = instance_place(x,y,objPavement)
	if pavement.x = x and pavement.y = y{
		instance_destroy(pavement)
	}
}