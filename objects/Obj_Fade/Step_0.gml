if (fading_out) {
    image_alpha += fade_speed;
    if (image_alpha >= 1) {
        image_alpha = 1;

        if (restart_room) {

            room_restart()
			
        } else {
            room_goto(target_room)
        }
    }
}
//restart_room = false
