// Inherit the parent event
if hp <= 0
{
	instance_destroy()
}

if knockback_timer >= 0{
	// Predict the next position
    var dx = lengthdir_x(speed, direction);
    var dy = lengthdir_y(speed, direction);
    var can_move_x = place_meeting(x + dx, y, Obj_wall);
    var can_move_y = place_meeting(x, y + dy, Obj_wall);
	var can_move_xEnemy = place_meeting(x + dx, y, Obj_Enemy);
    var can_move_yEnemy = place_meeting(x, y + dy, Obj_Enemy);
    // Apply movement only if no collisiond
    if can_move_x || can_move_xEnemy {
         dx = 0;
        speed = 0;
    }
    if can_move_y || can_move_yEnemy {
        dy = 0;
        speed = 0
	}
    knockback_timer--;
	damage_flash_timer--;
	if knockback_timer <= 0{
	speed = 0;
	direction = 0;
	}
}
if damage_flash_timer >= 0 {
    damage_flash_timer -= 1;

    if (damage_flash_timer <= 0) {
        image_blend = c_white; // or c_lime or whatever the original color is
		 }
}
//speed
xSpeed = lengthdir_x(moveSpd, moveDir)
ySpeed = lengthdir_y(moveSpd, moveDir)



//movement
x += xSpeed
y += ySpeed

//chase player
moveDir = point_direction(x, y, Obj_player.x, Obj_player.y)
var _weaponXScale = 1;
image_xscale = _weaponXScale;
if moveDir > 90 && moveDir < 270
	{
		_weaponXScale = -1;
		image_xscale = _weaponXScale;
	}

if shootTimer > 0
{
	shootTimer--
}
	
if (shootTimer <= 0) {
    shootTimer = shootCooldown;
	
	
   var randnum = irandom(3); // 0 or 1 or 2

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
		case 3:
			summon()
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
                sprite_index = spr_Boss;
				image_index = 0;
				image_speed = 0;		// Freeze animation while hovering
                alarm[2] = 60;               // Hover for 2 seconds
                jumpState = 1;
            }
            break;

        case 2: // Falling down
            if (y < jumpGroundY) {
                y += jumpFallSpeed;
            } else {
                y = jumpGroundY;
                sprite_index = spr_Boss; // <- Return to default sprite
				image_index = 0;
				image_speed = 1;
                jumping = false;
                jumpState = 0;
				moveSpd = 2
				
				attack360();
            }
            break;
    }
}

