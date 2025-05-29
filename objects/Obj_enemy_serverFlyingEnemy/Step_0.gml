//flash red if hit


//death
if hp <= 0
{
	instance_destroy()
}


//speed
xSpeed = lengthdir_x(moveSpd, moveDir)
ySpeed = lengthdir_y(moveSpd, moveDir)

var closest_dist = 1000000;
var target_x = x;
var target_y = y;

// Server 1
if instance_exists(Obj_serverDHCP) && Obj_serverDHCP.hp > 0 {
    var d = point_distance(x, y, Obj_serverDHCP.x, Obj_serverDHCP.y);
    if d < closest_dist {
        closest_dist = d;
        target_x = Obj_serverDHCP.x;
        target_y = Obj_serverDHCP.y;
    }
}

// Server 2
if instance_exists(Obj_serverDNS) && Obj_serverDNS.hp > 0 {
    var d = point_distance(x, y, Obj_serverDNS.x, Obj_serverDNS.y);
    if d < closest_dist {
        closest_dist = d;
        target_x = Obj_serverDNS.x;
        target_y = Obj_serverDNS.y;
    }
}

// Server 3
if instance_exists(Obj_serverFTP) && Obj_serverFTP.hp > 0 {
    var d = point_distance(x, y, Obj_serverFTP.x, Obj_serverFTP.y);
    if d < closest_dist {
        closest_dist = d;
        target_x = Obj_serverFTP.x;
        target_y = Obj_serverFTP.y;
    }
}

// Server 4
if instance_exists(Obj_Server) && Obj_Server.hp > 0 {
    var d = point_distance(x, y, Obj_Server.x, Obj_Server.y);
    if d < closest_dist {
        closest_dist = d;
        target_x = Obj_Server.x;
        target_y = Obj_Server.y;
    }
}

// Now set direction
moveDir = point_direction(x, y, target_x, target_y);
//chase player
	image_angle = moveDir
	var _weaponYScale = 1;
	image_yscale = _weaponYScale;
	if moveDir > 90 && moveDir < 270
	{
		_weaponYScale = -1;
		image_yscale = _weaponYScale;
	}


//movement
x += xSpeed
y += ySpeed