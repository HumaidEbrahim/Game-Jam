global.centerYOffset = -25;
global.aim_direction = 0;
function mouseTrack(){
	/*aimDir = point_direction(x,y, mouse_x,mouse_y);
	return aimDir;*/
	
var xdir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var ydir = keyboard_check(ord("S")) - keyboard_check(ord("W"));
    aimDir = point_direction(0, 0, xdir, ydir);
	global.aim_direction = angle_lerp(global.aim_direction, aimDir, 0.2);
	global.aim_direction = ((global.aim_direction mod 360) + 360) mod 360

return global.aim_direction
}
function angle_lerp(a, b, amount) {
    var diff = angle_difference(b, a);
    return a + diff * amount;
}