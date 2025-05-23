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

image_angle = aimDir;

}
if owner != noone && shootTimer > 0 {
	shootTimer--;
}