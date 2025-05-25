// Inherit the parent event
event_inherited();

shootCooldown = global.baseCooldown + 30;
if useWeapon && shootTimer <= 0
{
	shootTimer = shootCooldown
	var _bullet = instance_create_layer(x, y, "Instances",Obj_bullet_pistol)
	with(_bullet){
		direction = mouseTrack();
	}
	audio_play_sound(sndPistol, 1, false)
	
}