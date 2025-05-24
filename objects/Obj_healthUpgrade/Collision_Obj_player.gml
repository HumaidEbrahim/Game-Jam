other.maxHp += maxHp;
if other.hp < other.maxHp{
	other.hp += maxHp;
	if other.hp > other.maxHp
	{
		other.hp = other.maxHp;
	}
}
instance_destroy();