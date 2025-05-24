if (other.id != id) {
    // Calculate the angle to push this enemy away from the other one
    var angle = point_direction(other.x, other.y, x, y);
    var push_distance = 2; // Tweak as needed
	var dx = lengthdir_x(speed, direction);
    var dy = lengthdir_y(speed, direction);
    var can_move_x = place_meeting(x + dx, y, Obj_wall);
    var can_move_y = place_meeting(x, y + dy, Obj_wall);
	var can_move_xEnemy = place_meeting(x + dx, y, Obj_Enemy);
    var can_move_yEnemy = place_meeting(x, y + dy, Obj_Enemy);
    // Apply movement only if no collisiond
    if can_move_x || can_move_xEnemy {
         dx = 0;
        speed = 0;
		x += lengthdir_x(push_distance, angle);
    }
    if can_move_y || can_move_yEnemy {
        dy = 0;
        speed = 0
		y += lengthdir_y(push_distance, angle);
	}
}