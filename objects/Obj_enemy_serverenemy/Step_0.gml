// Inherit the parent event
event_inherited();

//chase player
if instance_exists(Obj_serverDHCP){
	moveDir = point_direction(x, y, Obj_serverDHCP.x, Obj_serverDHCP.y)
	var _weaponXScale = 1;
image_xscale = _weaponXScale;
if moveDir > 90 && moveDir < 270
	{
		_weaponXScale = -1;
		image_xscale = _weaponXScale;
	}
}



