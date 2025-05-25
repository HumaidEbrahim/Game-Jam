with(Obj_Server){
	if hp < 500{
	hp += other.healAmount;
	if hp > 500{
		hp = 500;	
	}
	}
}
with(Obj_serverDNS){
	if Obj_serverDNS.hp < 500{
	Obj_serverDNS.hp += other.healAmount;
	if Obj_serverDNS.hp > 500{
		Obj_serverDNS.hp = 500;	
	}
	}
}
with(Obj_serverFTP){
	if Obj_serverFTP.hp < 500{
	Obj_serverFTP.hp += other.healAmount;
	if Obj_serverFTP.hp > 500{
		Obj_serverFTP.hp = 500;	
	}
	}
}
with(Obj_serverDHCP){
	if Obj_serverDHCP.hp < 500{
	Obj_serverDHCP.hp += other.healAmount;
	if Obj_serverDHCP.hp > 500{
		Obj_serverDHCP.hp = 500;	
	}
	}
}
global.corruption -= 400;
if global.corruption < 0{
	global.corruption = 0;	
}
instance_destroy();
