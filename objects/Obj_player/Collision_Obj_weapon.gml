if equipKey{
	var weapon = instance_place(x,y,Obj_weapon)
	if weapon != noone && !weapon.equipped{
		equip_weapon(weapon.object_index)
		audio_play_sound(weapon.sound,1,false);
		instance_destroy(weapon);
	}
}