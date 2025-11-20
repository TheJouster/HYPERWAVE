/// @description Insert description here
// You can write your code in this editor
event_inherited()
energy = clamp(energy,0,energy_max)

if instance_exists(objEnergyContainer){
	energy_max = energy_max_d+(objEnergyContainer.energy_max*instance_number(objEnergyContainer))
}
if alarm[0] < 0{
	alarm[0] = 60
}

if hp <= 0{
	audio_play_sound(sndExplosion,1,0)
	instance_destroy()
}