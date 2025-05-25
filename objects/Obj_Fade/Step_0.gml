if (fading_in) {
    image_alpha -= fade_speed;
    if (image_alpha <= 0) {
        image_alpha = 0;
        fading_in = false;
    }
}
else if (fading_out) {
    image_alpha += fade_speed;
    if (image_alpha >= 1) {
        image_alpha = 1;
        room_goto(target_room);
    }
}
