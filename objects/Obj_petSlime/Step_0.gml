if owner != noone {
	if(instance_exists(owner)){
	direction =  point_direction(x, y, Obj_player.x, Obj_player.y);
	speed = 3;
	if x == owner.x|| y = owner.y{
		image_index= 0;
		speed = 0;
	}
}
}
if !adopted {
	if despawnTimer > 0{
	despawnTimer--;
	if despawnTimer <= 0 {
		instance_destroy();	
	}
}
}
