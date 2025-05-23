//flash red if hit
if damage_flash_timer > 0 {
    damage_flash_timer -= 1;

    if (damage_flash_timer <= 0) {
        image_blend = c_white; // or c_lime or whatever the original color is
    }
}

//death
if hp <= 0
{
	instance_destroy()
}


//chase player
if instance_exists(Obj_player){
	moveDir = point_direction(x, y, Obj_player.x, Obj_player.y)
}

//speed
xSpeed = lengthdir_x(moveSpd, moveDir)
ySpeed = lengthdir_y(moveSpd, moveDir)


if place_meeting(x + xSpeed, y, Obj_wall) || place_meeting(x + xSpeed, y, Obj_playerEnemy){
	xSpeed = 0;
}
if place_meeting(x, y + ySpeed, Obj_wall)|| place_meeting(x + xSpeed, y, Obj_playerEnemy){
	ySpeed = 0;
}


//movement
x += xSpeed
y += ySpeed