if (fading_out) {
    image_alpha += fade_speed;
    if (image_alpha >= 1) {
        image_alpha = 1;

        if (restart_room) {

            room_restart()
			
        } else {
            room_goto(target_room);
			with(Obj_player){
				x = 860;
				y = 348;
				hp = 100;
			}
	}
        }
    }




