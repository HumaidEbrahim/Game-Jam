// Inherit the parent event
event_inherited();

shootCooldown = global.baseCooldown + 60;
if useWeapon && shootTimer <= 0
{
	shootTimer = shootCooldown
	var baseAngle = mouseTrack();
	for(var i = 0; i <= 4; i++ ){
	var _bullet = instance_create_layer(x, y, "Instances",Obj_bullet_shotgun)
	with(_bullet){
		direction = baseAngle;
	}
	baseAngle += 5;
	
	audio_play_sound(sndShotgun, 1, false)
}
}