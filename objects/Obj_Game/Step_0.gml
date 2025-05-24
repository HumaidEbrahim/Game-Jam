global.tickTimer += 1;
if(global.tickTimer mod 60 == 0){
	with(Obj_Server){
		hp -= 1;
		global.corruption += 1;
	}
}