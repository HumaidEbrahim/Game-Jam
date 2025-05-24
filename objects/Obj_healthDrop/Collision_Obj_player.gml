if other.hp < global.maxHp{
	other.hp += hp;
	if other.hp > global.maxHp
	{
		other.hp = global.maxHp;
	}
}

instance_destroy();