var rightKey = keyboard_check(vk_right);
var leftKey = keyboard_check(vk_left);
var upKey = keyboard_check(vk_up);
var downKey = keyboard_check(vk_down);
equipKey = keyboard_check_pressed(ord("F"));
mask_index = sprite[7];


if hp > global.maxHp{
	hp = global.maxHp;
}

// Death
if (hp <= 0) 
{
 

    if ((room == Room1) && (!instance_exists(Obj_Fade_Death)))
    {
        instance_create_layer(0, 0, "Instances", Obj_Fade_Death);
		 // reset
		    hp = 100;
		    global.maxHp = 100;
		    equip_weapon(Obj_weapon_pistol);
		    global.corruption = 0;
			 reset_score()
    }

    if ((room == Room1_1) && (!instance_exists(Obj_Fade_FinalDeath)))
    {
        instance_create_layer(0, 0, "Instances", Obj_Fade_FinalDeath);
		 // reset
		    hp = 100;
		    global.maxHp = 100;
		    equip_weapon(Obj_weapon_pistol);
		    global.corruption = 0;
			
			 reset_score()
    }
}

	
#region
	var _horizontal = rightKey - leftKey;
	var _vertical = downKey - upKey;
	moveDir = point_direction(0,0, _horizontal, _vertical);

	var _speed = 0;
	var _inputLevel = point_distance(0,0,_horizontal,_vertical); 
	_inputLevel = clamp(_inputLevel, 0, 1)
	_speed = moveSpd * _inputLevel;

	xSpeed = lengthdir_x(_speed, moveDir);
	ySpeed = lengthdir_y(_speed, moveDir);

	if place_meeting(x + xSpeed, y, Obj_wall) || place_meeting(x + xSpeed, y, Object_wall_solid){
			xSpeed = 0;
		}
	if place_meeting(x, y + ySpeed, Obj_wall) || place_meeting(x, y + ySpeed, Object_wall_solid){
			ySpeed = 0;
		}
		
	if damage_flash_timer >= 0 {
    damage_flash_timer -= 1;

    if (damage_flash_timer <= 0) {
        image_blend = c_white; // or c_lime or whatever the original color is
		 }
}
	
	x += xSpeed;
	y += ySpeed;

aimDir = mouseTrack();
/*var xdir = keyboard_check(vk_right) - keyboard_check(vk_left);
var ydir = keyboard_check(vk_down) - keyboard_check(vk_up);

if (xdir != 0 || ydir != 0) {
    aimDir = point_direction(0, 0, xdir, ydir);*/
centerY = y + global.centerYOffset
#endregion

#region
/*
face = round(aimDir/90);
if face == 4 
{
	face = 0
};
if face == -2 {
	face = 2;
}
if face == -3 {
	face = 3	
}*/
var normalized = ((aimDir + 45) + 360) mod 360;
var face = floor(normalized / 90);
if face == 4 
{
	face = 0
};
if face == -2 {
	face = 2;
}
if face == -3 {
	face = 3	
}
if face == -4 {
	face = 3	
}
if face == -1 {
	face = 1	
}
if xSpeed == 0 && ySpeed == 0
{
	if face == 0 {
		sprite_index = sprite[4];
	}
    else if face == 1{
	    sprite_index = sprite[5];
	}
	else if face == 2{
		sprite_index = sprite[6];
	}
	else if face == 3{
		sprite_index = sprite[7];
	}
}
else{
sprite_index = sprite[face]	
}
#endregion

