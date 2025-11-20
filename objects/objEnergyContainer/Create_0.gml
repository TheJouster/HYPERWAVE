/// @description Insert description here
// You can write your code in this editor
hpmax = 1000
hp = hpmax

width = 2;
height = 3;
energy_max = 10000;

for(var i = 0; i < width+2;i++){
	for(var j = 0; j < height+2;j++){
		instance_create_depth(x-24+(24*i),y+24-(24*j),0,objPavement)
	}	
}
point_x = x+24
point_y = y-86