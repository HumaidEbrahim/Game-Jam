//Movement Variables
moveDir = 0;
moveSpd = 3;
xSpeed = 0;
ySpeed = 0;
 
 //Current equiped weapon
currentWeapon = noone;
// Equips default weapon
equip_weapon(Obj_weapon_weapon1)
//Center offsets
centerY = 0;
//Aiming direction
aimDir = 0;
 
//Sprite animations to be stored
face = 3;
sprite[0] = RunRight;
sprite[1] = RunBack;
sprite[2] = RunLeft;
sprite[3] = RunForward;
sprite[4] = IdleRight;
sprite[5] = IdleBack;
sprite[6] = IdleLeft;
sprite[7] = IdleForward;

sprite_index = sprite[face];
mask_index = sprite[3];


//Function for equiping and changing weapons
function equip_weapon(weapon_object){
	if(instance_exists(currentWeapon)){
		instance_destroy(currentWeapon);
	}
	currentWeapon = instance_create_layer(x,y - 15,"Instances",weapon_object);
	currentWeapon.owner = id;
	currentWeapon.equipped = true;
	currentWeapon.mask_index = -1;
	currentWeapon.image_index = 1;
}