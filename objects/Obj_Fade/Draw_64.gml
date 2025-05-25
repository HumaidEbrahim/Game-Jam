if (fading_in || fading_out) {
    draw_set_alpha(image_alpha);
	 draw_sprite_stretched(img_background, 0, 0, 0, display_get_gui_width(), display_get_gui_height())
    draw_set_alpha(1);
}
