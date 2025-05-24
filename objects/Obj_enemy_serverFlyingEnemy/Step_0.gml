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
}


//movement
x += xSpeed
y += ySpeed