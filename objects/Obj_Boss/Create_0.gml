// Inherit the parent event
event_inherited();
hp = hp + 2500
max_hp = 2500
damage = damage + 25
shootTimer = 0
shootCooldown = 500
moveSpd = 2
moveSpd = 1.5;
moveDir = 0;
isWaiting = false;
timer = 120
//jump 
jumping = false;
jumpState = 0;
jumpGroundY = y;           // Save the ground Y position
jumpTargetY = 0;
jumpSpeed = 20;
jumpFallSpeed = 15;
//Boss Sprites


//dash
dash_speed = 15;
dashing = false;


function attack360() {
    var numDirections = 8;
    var bulletsPerDirection = 4;
    var directionStep = 360 / numDirections;

    for (var i = 0; i < numDirections; i++) {
        var baseAngle = i * directionStep;

        for (var j = 0; j < bulletsPerDirection; j++) {
            var _bullet = instance_create_layer(x, y, "Instances", Obj_dustDamage);

            _bullet.direction = baseAngle;
            _bullet.speed = 1 + j; 
        }
    }
}


function bossJumpAttack() {
    if (!jumping) {
		// Phase: Pre-jump charge
		sprite_index = spr_boss_prejump;
	    image_index = 0;
	    image_speed = 0.5;
		moveSpd = 0
		
		
        jumping = true;
        jumpState = -1;          // Pre-jump delay
        alarm[1] = 60;           // Short pause before jumping
		
    }
}

function laser(){
	
}

function lightningStrike(){
	var strikes = 7;

	for (var i = 0; i < strikes; i++){
		var xx = random(room_width-400);
		var yy = random(room_height-200);

		instance_create_layer(xx, yy, "Instances", Obj_Warning_Marker);
	}
}

function summon(){
	var spawn = 5
	for (var i = 0; i < spawn; i++){
		var xx = random(room_width-400);
		var yy = random(room_height-200);
		instance_create_layer(xx, yy, "Instances", Obj_enemy_playerenemy_enemy1);
	
}

function dash(){
	
}


}