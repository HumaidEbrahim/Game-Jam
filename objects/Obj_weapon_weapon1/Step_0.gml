// Inherit the parent event
event_inherited();

shootCooldown = global.baseCooldown + 7;
if  (useWeapon1 || useWeapon2 || useWeapon3 || useWeapon4) && shootTimer <= 0
{
	shootTimer = shootCooldown
	var _bullet = instance_create_layer(x, y, "Instances",Obj_bullet_weapon1)
	with(_bullet){
		direction = mouseTrack();
	}
	
	audio_play_sound(sndMachineGun, 1, false)
	
}