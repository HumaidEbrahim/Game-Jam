
if damage_flash_timer > 0 {
    damage_flash_timer -= 1;

    if (damage_flash_timer <= 0) {
        image_blend = c_white; // or c_lime or whatever the original color is
    }
}
if hp < 0{
	hp = 0;	
}
