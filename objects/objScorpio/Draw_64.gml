/// @description Insert description here
// You can write your code in this editor

var gui_width = display_get_gui_width()
var gui_height = display_get_gui_height()



var view_width = camera_get_view_width(view_camera[0])
var view_height = camera_get_view_height(view_camera[0])


var SGUIy = (bbox_top-16 - camera_get_view_y(view_camera[0])) * (gui_width / view_width);
var SGUIx = (x - camera_get_view_x(view_camera[0])) * (gui_height / view_height);

/*
if hit_healthbar > 0 or objPlayer.mouseselected == id{
	draw_sprite(sprEnemyHPBounds,0,SGUIx-42,SGUIy)
	draw_sprite_part(sprEnemyHPBarBG,0,0,0,(shp/hpmax)*sprite_get_width(sprEnemyHPBar),4,SGUIx-40,SGUIy+2)
	draw_sprite_part(sprEnemyHPBar,0,0,0,(hp/hpmax)*sprite_get_width(sprEnemyHPBar),4,SGUIx-40,SGUIy+2)
	draw_set_font(fntGUISmall)
	draw_set_color(c_white)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text_shadow(SGUIx,SGUIy-12,name,c_black,0.5,1,1)
	if received_damage > 0{
		draw_set_halign(fa_left)	
		draw_text_shadow(SGUIx-42,SGUIy+16,received_damage,c_black,0.5,1,1)
	}
	draw_reset_text()
}