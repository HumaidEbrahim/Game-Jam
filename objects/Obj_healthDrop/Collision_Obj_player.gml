if other.hp < other.maxHp{
	other.hp += hp;
	if other.hp > other.maxHp
	{
		other.hp = other.maxHp;
	}
}

instance_destroy();