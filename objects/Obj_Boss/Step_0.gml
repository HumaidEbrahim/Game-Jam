// Inherit the parent event
event_inherited();

if shootTimer > 0
{
	shootTimer--
}
	
if (shootTimer <= 0) {
    shootTimer = shootCooldown;

    var randnum = irandom(1); // 0 or 1

    switch (randnum) {
        case 0:
            lightningStrike();
            break;
        case 1:
            attack360();
            break;
    }
}


