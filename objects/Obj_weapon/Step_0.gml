if equipped{
useWeapon = mouse_check_button(mb_left);
centerY = y + global.centerYOffset;

if(instance_exists(owner)){
	x = owner.x;
	y = owner.centerY;
}

aimDir = mouseTrack();
var _weaponYScale = 1;
image_yscale = _weaponYScale;
if aimDir > 90 && aimDir < 270
{
	_weaponYScale = -1;
	image_yscale = _weaponYScale;
}
if aimDir >= 45 && aimDir <= 135{
	depth = 100
}
else{
	depth = -1	
}

image_angle = aimDir;

}
if owner != noone && shootTimer > 0 {
	shootTimer--;
}