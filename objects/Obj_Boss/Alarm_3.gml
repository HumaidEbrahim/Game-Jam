var spawn = 5;
var radius = 400;

for (var i = 0; i < spawn; i++) {
    var angle = random(360);
    var dist = random(radius);
    
    var xx = x + lengthdir_x(dist, angle);
    var yy = y + lengthdir_y(dist, angle);

    instance_create_layer(xx, yy, "Instances", Obj_enemy_playerenemy_enemy1);
}

// Resume movement
moveSpd = 1;
sprite_index = spr_Boss; // Or default sprite
image_index = 0;
image_speed = 1;

isSummoning = false;