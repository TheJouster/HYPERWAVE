/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
camera = view_camera[0]
x = room_width/2
y = room_height/2
xTo = room_width/2
yTo = room_height/2
view_w_half  = camera_get_view_width(camera) * 0.5;
view_h_half = camera_get_view_height(camera) * 0.5;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;

wshake_length = 0;
wshake_magnitude = 0;
wshake_remain = 0;

follow = id
creator = noone

srf_sky = -1

windowx  =0

windowy  =0

left = false
zz = 0
xx = 0
yy = 0
zoom = 1
tozoom = 1
rx=  0
ry = 0
hsp = 0
vsp = 0
alarm[2] = 3
angle = 0

display_set_gui_size(640,480)

surface_resize(application_surface,1280,960)

dragging = false;
drag_x = 0;
drag_y = 0;
camX = 0
camY = 0
camW = 640
camH = 480
view = 1