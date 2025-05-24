// Inherit the parent event
event_inherited();

//chase player
moveDir = point_direction(x, y, Obj_player.x, Obj_player.y)
var _weaponXScale = 1;
image_xscale = _weaponXScale;
if moveDir > 90 && moveDir < 270
	{
		_weaponXScale = -1;
		image_xscale = _weaponXScale;
	}

