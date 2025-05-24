


if (distance_to_point(Obj_player.x, Obj_player.y) >= 250){
event_inherited();
}
else{
	if hp <= 0
	{
		instance_destroy()
	}
	
	xSpeed = 0
	ySpeed = 0
	
	if knockback_timer >= 0{
	knockback_timer -= 1;
	damage_flash_timer--;
	if knockback_timer <= 0{
	speed = 0;
	direction = 0;
		}
	}
	else if damage_flash_timer >= 0 {
	    damage_flash_timer -= 1;

	    if (damage_flash_timer <= 0) {
	       image_blend = c_white; // or c_lime or whatever the original color is
			}
	}
	
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
	



		
	
	



