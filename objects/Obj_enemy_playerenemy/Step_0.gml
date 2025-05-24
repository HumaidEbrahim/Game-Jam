// Inherit the parent event
event_inherited();

//chase player
moveDir = point_direction(x, y, Obj_player.x, Obj_player.y)
image_angle = moveDir;
var _weaponYScale = 1;
image_yscale = _weaponYScale;
if moveDir > 90 && moveDir < 270
	{
		_weaponYScale = -1;
		image_yscale = _weaponYScale;
	}

