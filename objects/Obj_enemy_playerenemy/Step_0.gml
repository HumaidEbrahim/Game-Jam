// Inherit the parent event
event_inherited();

//chase player
if instance_exists(Obj_player){
	moveDir = point_direction(x, y, Obj_player.x, Obj_player.y)
}

