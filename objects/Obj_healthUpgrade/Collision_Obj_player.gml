global.maxHp += maxHp;
if other.hp < global.maxHp{
	other.hp += global.maxHp;
	if other.hp > global.maxHp
	{
		other.hp = global.maxHp;
	}
}
instance_destroy();