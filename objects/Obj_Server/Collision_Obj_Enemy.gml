if damage_flash_timer <= 0{	
	var _inst = other
	hp -= _inst.damage;
	damage_flash_timer = 15;
}

