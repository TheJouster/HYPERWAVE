/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

var width  = camera_get_view_width(camera);
var height  = camera_get_view_height(camera);

if follow != id{
	if instance_exists(follow){
xTo = follow.x	
yTo = follow.y	
hsp = 0
vsp = 0
	}
}else{

}

if mouse_check_button(mb_left){
	var move_x = device_mouse_x_to_gui(0)-mouse_x_previous
	var move_y = device_mouse_y_to_gui(0)-mouse_y_previous
	xTo -= move_x
	yTo -= move_y
}else{
	var xmove = (InputCheck(INPUT_VERB.RIGHT)-InputCheck(INPUT_VERB.LEFT))*(5*zoom)	
	var ymove = (InputCheck(INPUT_VERB.DOWN)-InputCheck(INPUT_VERB.UP))*(5*zoom)	
	xTo += xmove
	yTo += ymove	
}

view_w_half  = (camera_get_view_width(camera)) * 0.5;
view_h_half = (camera_get_view_height(camera)) * 0.5;


x = smooth_approach(x,xTo,0.1)
y = smooth_approach(y,yTo,0.1)



view = clamp(view,0,2)
switch(view){
	case 0: camW = 320; camH = 240; break;	
	case 1: camW = 640; camH = 480; break;	
	case 2: camW = 1280; camH = 960; break;	
}








if tozoom < 0.25{
tozoom =  0.25
}
if zoom < 0.25{
zoom =  0.25
}
if tozoom > 2{
tozoom =  2
}
if zoom > 2{
zoom =  2
}



x = clamp(x,view_w_half,room_width-view_w_half)
y = clamp(y,view_h_half,room_height-view_h_half)

xTo = clamp(xTo,view_w_half,room_width-view_w_half)
yTo = clamp(yTo,view_h_half,room_height-view_h_half)

x = floor(x*10)/10
y = floor(y*10)/10

x+= random_range(-shake_remain,shake_remain)
y+= random_range(-shake_remain,shake_remain)



shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

camera_set_view_target(camera,id)

camera_set_view_pos(camera,x-view_w_half,y-view_h_half);

surface_resize(application_surface,camW*2,camH*2)

camera_set_view_size(camera,camW,camH)

camera_set_view_angle(camera,angle)



mouse_x_previous = device_mouse_x_to_gui(0);
mouse_y_previous = device_mouse_y_to_gui(0);