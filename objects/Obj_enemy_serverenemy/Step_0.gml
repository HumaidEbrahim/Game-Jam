// Inherit the parent event
event_inherited();

//chase player
if instance_exists(Obj_Server){
	moveDir = point_direction(x, y, Obj_Server.x, Obj_Server.y)
	var _weaponXScale = 1;
image_xscale = _weaponXScale;
if moveDir > 90 && moveDir < 270
	{
		_weaponXScale = -1;
		image_xscale = _weaponXScale;
	}
}



