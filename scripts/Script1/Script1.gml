global.centerYOffset = -25;

function mouseTrack(){
	aimDir = point_direction(x,y, mouse_x,mouse_y);
	return aimDir;
}