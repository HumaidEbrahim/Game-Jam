if damage_flash_timer <= 0
{
hp -= other.damage;
image_blend = c_red;
damage_flash_timer = 30;
global.corruption += other.damage; 
}
