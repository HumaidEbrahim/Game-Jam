//flash red if hit


//death
if hp <= 0
{
	instance_destroy()
}


//speed
xSpeed = lengthdir_x(moveSpd, moveDir)
ySpeed = lengthdir_y(moveSpd, moveDir)


//chase player
if instance_exists(Obj_Server){
	moveDir = point_direction(x, y, Obj_Server.x, Obj_Server.y)
	image_angle = moveDir
	var _weaponYScale = 1;
	image_yscale = _weaponYScale;
	if moveDir > 90 && moveDir < 270
	{
		_weaponYScale = -1;
		image_yscale = _weaponYScale;
	}
}


//movement
x += xSpeed
y += ySpeed