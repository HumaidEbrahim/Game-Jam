var rightKey = keyboard_check(ord("D"));
var leftKey = keyboard_check(ord("A"));
var upKey = keyboard_check(ord("W"));
var downKey = keyboard_check(ord("S"));

	var _horizontal = rightKey - leftKey;
	var _vertical = downKey - upKey;
	moveDir = point_direction(0,0, _horizontal, _vertical);

	var _speed = 0;
	var _inputLevel = point_distance(0,0,_horizontal,_vertical); 
	_inputLevel = clamp(_inputLevel, 0, 1)
	_speed = moveSpd * _inputLevel;

	xSpeed = lengthdir_x(_speed, moveDir);
	ySpeed = lengthdir_y(_speed, moveDir);

	if place_meeting(x + xSpeed, y, Obj_wall){
			xSpeed = 0;
		}
	if place_meeting(x, y + ySpeed, Obj_wall){
			ySpeed = 0;
		}
	
	x += xSpeed;
	y += ySpeed;