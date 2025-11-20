 /// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if (hurt_alpha > 0){
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,hurt_color,hurt_alpha*image_alpha)
	shader_reset()
}
