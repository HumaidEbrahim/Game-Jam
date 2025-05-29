global.maxHp += addHp;
other.hp += healing;
if other.hp > global.maxHp{
	other.hp = global.maxHp;
}
instance_destroy();