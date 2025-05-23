// Inherit the parent event
event_inherited();

//chase player
if instance_exists(Obj_Server){
	moveDir = point_direction(x, y, Obj_Server.x, Obj_Server.y)
}