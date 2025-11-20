/// @description Insert description here
// You can write your code in this editor
draw_sprite(sprPavement,0,x,y)
if !place_left{
	draw_sprite(sprPavement,1,x-24,y)	
}
if !place_right{
	draw_sprite(sprPavement,3,x+24,y)	
}
if !place_up{
	draw_sprite(sprPavement,2,x,y-24)	
}
if !place_down{
	draw_sprite(sprPavement,4,x,y+24)	
}
if !place_left and !place_up{
	draw_sprite(sprPavement,5,x-24,y-24)		
}
if !place_left and !place_down{
	draw_sprite(sprPavement,7,x-24,y+24)		
}
if !place_right and !place_up{
	draw_sprite(sprPavement,6,x+24,y-24)		
}
if !place_right and !place_down{
	draw_sprite(sprPavement,8,x+24,y+24)		
}