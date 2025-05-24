// Inherit the parent event
if damage_flash_timer <= 0
{
var _inst = other
hp -= _inst.damage;
image_blend = c_red;
damage_flash_timer = 7;
knockback_timer = 5;
}

