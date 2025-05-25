var rightKey = keyboard_check(ord("D"));
var leftKey = keyboard_check(ord("A"));
var upKey = keyboard_check(ord("W"));
var downKey = keyboard_check(ord("S"));
equipKey = keyboard_check_pressed(ord("E"));
currentWeapon.image_index = 0;
mask_index = sprite[7];


if hp > global.maxHp{
	hp = global.maxHp;
}

// Death
if (hp <= 0){
	if (!instance_exists(Obj_Fade_Death)) {
	instance_create_layer(0, 0, "Instances", Obj_Fade_Death)
	// reset
	hp = 100;
	global.maxHp = 100;
	equip_weapon(Obj_weapon_pistol)
	global.corruption =0
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
centerY = y + global.centerYOffset
#endregion

#region
face = round(aimDir/90);
if face == 4 
{
	face = 0
};
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