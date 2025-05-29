if (fading_out) {
    image_alpha += fade_speed;
    if (image_alpha >= 1) {
        image_alpha = 1;

       game_restart()
	}
}

