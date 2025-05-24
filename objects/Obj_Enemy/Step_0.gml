//flash red if hit
if hp <= 0
{
	instance_destroy()
}
else if knockback_timer >= 0{
	knockback_timer -= 1;
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


if place_meeting(x + xSpeed, y, Obj_wall) || place_meeting(x + xSpeed, y, Obj_enemy_playerenemy){
	show_debug_message("THE zombie IS TOUCHING THE WALL")
	xSpeed = 0;
}
if place_meeting(x, y + ySpeed, Obj_wall)|| place_meeting(x , y+ ySpeed, Obj_enemy_playerenemy){
	ySpeed = 0;
	show_debug_message("THE zombie IS TOUCHING THE WALL")
}

//movement
x += xSpeed
y += ySpeed
}