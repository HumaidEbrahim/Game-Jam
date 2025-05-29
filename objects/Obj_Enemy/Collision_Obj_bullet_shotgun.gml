if damage_flash_timer <= 0
{
var _inst = other
hp -= _inst.damage;
image_blend = c_red;
damage_flash_timer = 10;
speed = other.knockback;
direction = other.direction;
knockback_timer = 5;
other.passThrough--
}
if other.passThrough <= 0 {
	instance_destroy(other);	
}