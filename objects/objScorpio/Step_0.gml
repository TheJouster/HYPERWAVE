/// @description Insert description here
// You can write your code in this editor
randomize()


direction = angle_approach(direction,dir,4)
var nearest = instance_nearest(x,y,objBuilding)
image_angle = direction
hsp = approach(hsp,lengthdir_x(spd,direction),0.1)
vsp = approach(vsp,lengthdir_y(spd,direction),0.1)
move_and_collide(hsp,vsp,objSolid)

switch(state){
	case "idle":{
		if alarm[0] < 0{
			alarm[0] = 60*irandom_range(1,3)	
		}
	}
	break;	
	
	case "triggered":{
		
		if instance_exists(nearest){
			dir = point_direction(x,y,nearest.x+sprite_get_width(nearest.sprite_index)/2,nearest.y-sprite_get_height(nearest.sprite_index)/2)	
			spd = 0.5
		
			if distance_to_object(nearest) < 12{
				if attack_cooldown <= 0{
					state = "attack"
					spd = 0.1		
					image_index = 0
					image_yscale = choose(-1,1)
					sprite_index = sprScorpioAttack
					mask_index = sprScorpio
					audio_play_sound(sndBite,1,0)
					audio_play_sound(sndWhoosh,1,0)
					if distance_to_object(nearest) < 12{
						audio_play_sound(sndPunch,1,0,,,1.2)				
					}
					attack_cooldown = 60
				}
			}
		
		
		}
	}
	break;	
	
	case "attack":{
		if distance_to_object(nearest) < 12{
			if hit_cooldown <= 0{
				nearest.hp-=damage
				nearest.hurt_alpha = 1
				hit_cooldown = 30
			}
		}

		if sprite_index == sprScorpioAttack{
			if image_index >= image_number{
				sprite_index = sprScorpio
				mask_index = sprScorpio
				state = "triggered"
			}
		}
	}
	break;
	
	case "hit":{
		state = "triggered"
		hit_healthbar = 180
		if shp_delay <= 0{
			shp_delay = 60
		}
	}
	break;
	
}

if shp_delay > 0{
	shp_delay--	
}else{
	shp = lerp(shp,hp,0.1)
	received_damage = 0
}


if sprite_index == sprScorpioAttack{
	if image_index >= image_number{
		sprite_index = sprScorpio
		mask_index = sprScorpio
	}
}

if hit_healthbar > 0{
	hit_healthbar--	
}

if hit_cooldown > 0{
	hit_cooldown--	
}

attack_cooldown = approach(attack_cooldown,0,1)






if hurt_alpha > 0{
	hurt_alpha -= 0.05;	
}


if hp <= 0{
	audio_play_sound(sndEnemyDeath1,1,0)
	x = xstart
	y = ystart
	hp = hpmax
	audio_stop_sound(hurtsound)
	instance_destroy()
}


depth = -y-2
/*
if layer_exists("PlayerAndEnemies"){
	layer = layer_get_id("PlayerAndEnemies")	
}
*/







