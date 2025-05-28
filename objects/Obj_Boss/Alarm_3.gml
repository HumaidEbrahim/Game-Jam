var spawn = 5;

for (var i = 0; i < spawn; i++) {
    var xx = random(room_width - 400);
    var yy = random(room_height - 200);
    instance_create_layer(xx, yy, "Instances", Obj_enemy_playerenemy_enemy1);
}

// Resume movement
moveSpd = 1;
sprite_index = spr_Boss; // Or default sprite
image_index = 0;
image_speed = 1;

isSummoning = false;