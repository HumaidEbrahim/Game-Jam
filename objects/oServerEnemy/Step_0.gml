if damage_flash_timer > 0 {
    damage_flash_timer -= 1;

    if (damage_flash_timer <= 0) {
        image_blend = c_white; // or c_lime or whatever the original color is
    }
}


//if the enemies health goes below or is equal to zero, then it should be destroyed
if hp <= 0 { instance_destroy();}


//this code is to targeet the server and damage.
//VERY IMPORTANT. This code is to head towards attacking the server bruh
if instance_exists(oServer) { moveDir = point_direction(x, y, oServer.x, oServerr.y); }

xSpeed = lengthdir_x(moveSpd, moveDir)
ySpeed = lengthdir_y(moveSpd, moveDir)



