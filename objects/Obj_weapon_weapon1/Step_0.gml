// Inherit the parent event
event_inherited();

shootCooldown = global.baseCooldown + 7;
if useWeapon && shootTimer <= 0
{
	shootTimer = shootCooldown
	var _bullet = instance_create_layer(x, y, "Instances",Obj_bullet_weapon1)
	with(_bullet){
		direction = mouseTrack();
	}
	
}