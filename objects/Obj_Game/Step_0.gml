global.tickTimer += 1;
if(global.tickTimer mod 60 == 0){
	with(Obj_Server){
		hp -= 1;
		global.corruption += 1;
	}
}
if global.corruption >= global.maxCorruption {
		
}

if global.corruption < 500 {
	global.baseCooldown = 0;
	global.dropRate = 50;
}

else if global.corruption >= 500 && global.corruption < 1000{
	if global.baseCooldown > 15 {
	 global.baseCooldown = 15;
	}
	if global.maxHp > 200 {
		global.maxHp = 200;
	}
	global.dropRate = 45;
	}
	
else if global.corruption >= 1000 && global.corruption < 1500{
	if global.baseCooldown > 30 {
	 global.baseCooldown = 30;
	}
	if global.maxHp > 150 {
		global.maxHp = 150;
	}
	global.dropRate = 35;
}
else if global.corruption >= 1500 && global.corruption < 2000{
	if global.baseCooldown > 60 {
	 global.baseCooldown = 60;
	}
	if global.maxHp > 100 {
		global.maxHp = 100;
	}
	global.dropRate = 25;
	
}
