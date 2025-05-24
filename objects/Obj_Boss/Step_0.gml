// Inherit the parent event
event_inherited();

if shootTimer > 0
{
	shootTimer--
}
	
if (shootTimer <= 0) {
    shootTimer = shootCooldown;
	
	
   var randnum = irandom(2); // 0 or 1 or 2

    switch (randnum) {
        case 0:
            lightningStrike();
            break;
        case 1:
            attack360();
            break;
		case 2:
			if hp <= 2225{
				bossJumpAttack()
				
			}
			else{
				attack360()
			}
			break
    }
}


//Jump Step code
if (jumping) {
    switch (jumpState) {
        case 0: // Jumping up
            if (y > jumpTargetY) {
                y -= jumpSpeed;
            } else {
                y = jumpTargetY;
                image_speed = 0;             // Freeze animation while hovering
                alarm[2] = 60;               // Hover for 2 seconds
                jumpState = 1;
            }
            break;

        case 2: // Falling down
            if (y < jumpGroundY) {
                y += jumpFallSpeed;
            } else {
                y = jumpGroundY;
                image_speed = 1;             // Resume animation
                jumping = false;
                jumpState = 0;
				attack360();
            }
            break;
    }
}

