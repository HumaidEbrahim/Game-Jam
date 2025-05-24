// Set health bar position
var bar_x1 = 20;
var bar_y1 = 20;
var bar_x2 = 600;
var bar_y2 = 80;

draw_text(bar_x1, bar_y2 + 20, string(hp) + " / " + string(global.maxHp));
draw_text(bar_x1, bar_y2 + 40, string(global.corruption) + " / " + string(global.maxCorruption));


// Draw the Corruption
draw_healthbar(bar_x1, bar_y1 + 20, bar_x2, bar_y2 + 20, global.corruption, c_black, c_blue, c_purple, 0, true, true);


// Optional: Draw "HP" label above the health bar
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white); // Set text color
draw_text(bar_x1, bar_y1 - 20, "HP");

// Draw the actual health bar
draw_healthbar(bar_x1, bar_y1, bar_x2, bar_y2, hp, c_black, c_red, c_lime, 0, true, true);


