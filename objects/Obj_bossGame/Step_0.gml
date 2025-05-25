with(Obj_Boss){
	if hp <= 0 {
		 instance_create_layer(0, 0, "Instances", Obj_Fade_Win);
	}
}