
for (var i = 1; i < array_length(options); i++) {
    if (i == selected) {
        draw_set_color(c_teal); 
    } else {
        draw_set_color(c_white);
    }
	
	draw_text(1694, 668 + (i-1) * 130, options[i])
	
 
}
  draw_set_color(c_white);
    