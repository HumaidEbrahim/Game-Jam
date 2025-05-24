


if (distance_to_point(Obj_player.x, Obj_player.y) >= 250){
event_inherited();
}
else{
	xSpeed = 0
	ySpeed = 0
	if shootTimer > 0
	{
		shootTimer--
	}
	
	if shootTimer <= 0
	{
	shootTimer = shootCooldown;
	var _bullet = instance_create_layer(x, y, "Instances",Obj_bullet_enemy)
	with(_bullet){
		direction = point_direction(x, y, Obj_player.x, Obj_player.y)
	}
}
}
	



		
	
	



