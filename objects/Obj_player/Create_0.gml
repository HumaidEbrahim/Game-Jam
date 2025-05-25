//Movement Variables
moveDir = 0;
moveSpd = 3;
xSpeed = 0;
ySpeed = 0;
equipKey = 0;
//Stat variables
hp = 100;
global.maxHp = 100;
 
 //State Variables
damage_flash_timer = 0;
knockback_timer = 0;
 
 
 
 //Current equiped weapon
currentWeapon = noone;
// Equips default weapon
equip_weapon(Obj_weapon_pistol)
//Center offsets
centerY = 0;
//Aiming direction
aimDir = 0;
 
//Sprite animations to be stored
face = 7;
sprite[0] = RunRight;
sprite[1] = RunBack;
sprite[2] = RunLeft_1;
sprite[3] = RunForward;
sprite[4] = IdleRight;
sprite[5] = IdleBack;
sprite[6] = IdleLeft;
sprite[7] = IdleForward;

sprite_index = sprite[face];
mask_index = sprite[7];


//Function for equiping and changing weapons
function equip_weapon(weapon_object){
	if(instance_exists(currentWeapon)){
		instance_destroy(currentWeapon);
	}
	currentWeapon = instance_create_layer(x,y - 15,"Instances",weapon_object);
	currentWeapon.owner = id;
	currentWeapon.equipped = true;
	currentWeapon.mask_index = -1;
}