/// @description Insert description here
// You can write your code in this editor


if place_meeting(x+hsp,y+vsp,objEnemy){
var enemy = instance_place(x+hsp,y+vsp,objEnemy)	
enemy.hsp= hsp/2
enemy.vsp= vsp/2
}	
if place_meeting(x,y,objEnemy){
	for(var i = 0; i < 1000; i++){
		if !place_meeting(x+i,y,objEnemy){
			x +=  i
			break;	
		}
		if !place_meeting(x-i,y,objEnemy){
			x -=  i
			break;	
		}
		if !place_meeting(x,y+i,objEnemy){
			y +=  i
			break;	
		}
		if !place_meeting(x,y-i,objEnemy){
			y -=  i
			break;	
		}
		if !place_meeting(x+i,y+i,objEnemy){
			x +=  i
			y +=  i
			break;	
		}
			if !place_meeting(x-i,y-i,objEnemy){
			x -=  i
			y -=  i
			break;	
		}
			if !place_meeting(x-i,y+i,objEnemy){
			x -=  i
			y +=  i
			break;	
		}
			if !place_meeting(x+i,y-i,objEnemy){
			x +=  i
			y -=  i
			break;	
		}

	}
}


if place_meeting(x,y,objSolid){
	for(var i = 0; i < 1000; i++){
		if !place_meeting(x+i,y,objSolid){
			x +=  i
			break;	
		}
		if !place_meeting(x-i,y,objSolid){
			x -=  i
			break;	
		}
		if !place_meeting(x,y+i,objSolid){
			y +=  i
			break;	
		}
		if !place_meeting(x,y-i,objSolid){
			y -=  i
			break;	
		}
		if !place_meeting(x+i,y+i,objSolid){
			x +=  i
			y +=  i
			break;	
		}
			if !place_meeting(x-i,y-i,objSolid){
			x -=  i
			y -=  i
			break;	
		}
			if !place_meeting(x-i,y+i,objSolid){
			x -=  i
			y +=  i
			break;	
		}
			if !place_meeting(x+i,y-i,objSolid){
			x +=  i
			y -=  i
			break;	
		}

	}
}
