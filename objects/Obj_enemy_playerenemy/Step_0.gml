// Inherit the parent event
//flash red if hit
if hp <= 0
{
	instance_destroy()
}

else if knockback_timer >= 0{
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
else if damage_flash_timer >= 0 {
    damage_flash_timer -= 1;

    if (damage_flash_timer <= 0) {
        image_blend = c_white; // or c_lime or whatever the original color is
		 }
}
else{
//speed
xSpeed = lengthdir_x(moveSpd, moveDir)
ySpeed = lengthdir_y(moveSpd, moveDir)



//movement
x += xSpeed
y += ySpeed
}
//chase player
moveDir = point_direction(x, y, Obj_player.x, Obj_player.y)
var _weaponXScale = 1;
image_xscale = _weaponXScale;
if moveDir > 90 && moveDir < 270
	{
		_weaponXScale = -1;
		image_xscale = _weaponXScale;
	}

