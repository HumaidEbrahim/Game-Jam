if equipped{
useWeapon1 = keyboard_check(ord("D"));
useWeapon2 = keyboard_check(ord("A"));
useWeapon3 = keyboard_check(ord("W"));
useWeapon4 = keyboard_check(ord("S"));
centerY = y + global.centerYOffset;

if(instance_exists(owner)){
	x = owner.x;
	y = owner.centerY;
}

aimDir = mouseTrack();
var _weaponYScale = 1;
image_yscale = _weaponYScale;
var angle = ((aimDir mod 360) + 360) mod 360;
if (angle > 90 && angle < 270) || (aimDir < -90 && aimDir > -270)
{
	_weaponYScale = -1;
	image_yscale = _weaponYScale;
}
if (angle >= 45 && angle <= 135) || (aimDir <= -45 && aimDir >= -135){
	depth = 100;
}
else{
	depth = -1	
}

image_angle = angle;

}
if owner != noone && shootTimer > 0 {
	shootTimer--;
}

if owner == noone {
	if despawnTimer > 0{
	despawnTimer--;
	if despawnTimer <= 0 {
		instance_destroy();	
	}
}	
}