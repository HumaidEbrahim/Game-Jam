// Inherit the parent event
event_inherited();
hp = hp + 2500
damage = damage + 25
shootTimer = 0
shootCooldown = 500
moveSpd = 2
moveSpd = 1.5;
moveDir = 0;
isWaiting = false;

function attack360() {
    var numDirections = 8;
    var bulletsPerDirection = 4;
    var directionStep = 360 / numDirections;

    for (var i = 0; i < numDirections; i++) {
        var baseAngle = i * directionStep;

        for (var j = 0; j < bulletsPerDirection; j++) {
            var _bullet = instance_create_layer(x, y, "Instances", Obj_bullet_enemy);

            _bullet.direction = baseAngle;
            _bullet.speed = 1 + j; 
        }
    }
}

function jump(){
	
}


function laser(){
	
}
