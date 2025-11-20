// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function instance_nearest_notme(x_off,y_off,_obj){
	var _x = x;
	x -= 10000000;
	var _inst = instance_nearest(_x+x_off, y+y_off, _obj);
	x = _x;
	if _inst != id && _inst != noone
	{
	// You found an instance!
	return _inst;
	}
	return noone;
}