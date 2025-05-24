// Inherit the parent event
event_inherited();

if shootTimer > 0
{
	shootTimer--
}
	
if shootTimer <= 0{
	shootTimer = shootCooldown;
	attack360()
	
}



