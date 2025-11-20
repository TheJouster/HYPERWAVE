/// @description Insert description here
// You can write your code in this editor
draw_self()
if instance_exists(objStorage){
	var nearest = instance_nearest(x,y,objStorage)
	if point_distance(point_x-1,point_y-1,nearest.point_x-1,nearest.point_y-1) < 24*8{
		draw_line_width_colour(point_x-1,point_y-1,nearest.point_x-1,nearest.point_y-1,2,c_orange,c_orange)
	}
}
