// Inherit the parent event
event_inherited();

hp = hp + 2500
max_hp = 2500
damage = damage + 25
shootTimer = 60
shootCooldown = 500

moveSpd = 1
moveDir = 0;
isWaiting = false;
timer = 120
triggered_50percent = false;
isSummoning = false;
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
dash_time = 0;
dashtimer = 310
dashCooldown = 640

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
		dash_timer = 300 //prevent dash mid jump
		
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

function summon() {
    if (!isSummoning) {
        isSummoning = true;

        // Pre-summon animation
        sprite_index = spr_Boss_spell;
        image_index = 0;
        image_speed = 0.5;
        moveSpd = 0;

        // Wait 1 second (60 frames), then summon
        alarm[3] = 60;
    }
}

function dash() {
    if (!dashing) {
        dashing = true;
        dash_time = 20; // dash duration (in frames)
        moveDir = point_direction(x, y, Obj_player.x, Obj_player.y);
    }
}


