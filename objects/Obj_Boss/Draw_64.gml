// === Position and size of the health bar ===
var bar_width = 900;
var bar_height = 50;
var bar_x1 = (display_get_gui_width() - bar_width) / 2;
var bar_y1 = 30;
var bar_x2 = bar_x1 + bar_width;
var bar_y2 = bar_y1 + bar_height;

// === Background (border) ===
draw_set_color(c_black);
draw_rectangle(bar_x1, bar_y1, bar_x2, bar_y2, false); // outline

// === Filled health portion ===
var hp_percent = hp / max_hp;
draw_set_color(c_red);
draw_rectangle(bar_x1, bar_y1, bar_x1 + (bar_width * hp_percent), bar_y2, false);

/*
// === Text on top ===
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text((bar_x1 + bar_x2) / 2, (bar_y1 + bar_y2) / 2, "BOSS HP: " + string(hp) + " / " + string(max_hp));
*/

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text((bar_x1 + bar_x2) / 2, (bar_y1 + bar_y2) / 2 + 50, "LANCE THE MASTERMIND");