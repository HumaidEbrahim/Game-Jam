if equipKey{
	var weapon = instance_place(x,y,Obj_weapon)
	if weapon != noone && !weapon.equipped{
		equip_weapon(weapon.object_index)
		instance_destroy(weapon);
	}
}