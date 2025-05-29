// Inherit the parent event
event_inherited();

shootCooldown = global.baseCooldown + 30;
if (useWeapon1 || useWeapon2 || useWeapon3 || useWeapon4) && shootTimer <= 0
{
	shootTimer = shootCooldown
	var _bullet = instance_create_layer(x, y, "Instances",Obj_bullet_mielie)
	with(_bullet){
		direction = mouseTrack();
	}
	if flipflop{
		flipflop = false
		audio_play_sound(mie,1,false);
	}
	else if !flipflop{
		flipflop = true;
		audio_play_sound(lie,2,false);
	}
	
}