// === Setup ===
var bar_width = 300;
var bar_height = 25;
var margin = 20;

// === HP Bar Position === (Bottom Left Corner)
var hp_x1 = margin;
var hp_y1 = display_get_gui_height() - (bar_height * 2) - (margin * 2);
var hp_x2 = hp_x1 + bar_width;
var hp_y2 = hp_y1 + bar_height;

// === Corruption Bar Position === (Below HP Bar)
var corrupt_x1 = margin;
var corrupt_y1 = hp_y2 + margin / 2;
var corrupt_x2 = corrupt_x1 + bar_width;
var corrupt_y2 = corrupt_y1 + bar_height;

// === HP Background ===
draw_set_color(c_black);
draw_rectangle(hp_x1, hp_y1 - 25, hp_x2 + 100, hp_y2, false);

// === HP Fill ===
var hp_percent = hp / global.maxHp;
draw_set_color(c_lime);
draw_rectangle(hp_x1, hp_y1- 25, hp_x1 + (bar_width * hp_percent) + 100 , hp_y2, false);

// === HP Text ===
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(hp_x1 + 20, (hp_y1 + hp_y2) / 2 - 10, "HP: " + string(hp) + " / " + string(global.maxHp));

// === Corruption Background ===
draw_set_color(c_black);
draw_rectangle(corrupt_x1, corrupt_y1, corrupt_x2, corrupt_y2, false);

// === Corruption Fill ===
var corrupt_percent = global.corruption / global.maxCorruption;
draw_set_color(c_purple);
draw_rectangle(corrupt_x1, corrupt_y1, corrupt_x1 + (bar_width * corrupt_percent), corrupt_y2, false);
/*
// === Corruption Text ===
draw_set_color(c_white);
draw_text(corrupt_x1 + 10, (corrupt_y1 + corrupt_y2) / 2, "Corruption: " + string(global.corruption) + " / " + string(global.maxCorruption));
*/

// ==DrawGUI

var highscore_text = "High Score: " + string(global.highscore);
var score_text = "Score: " + string(global.score);

var padding_x = 20;
var padding_top = 20;
var padding_between = 5;



var text_width = max(string_width(score_text), string_width(highscore_text));
var line_height = string_height(score_text);


var total_height = padding_top + line_height + padding_between + line_height;

var box_x = display_get_gui_width() - text_width - padding_x * 2 - 20;
var box_y = 10;

draw_set_color(c_black);
draw_rectangle(box_x, box_y, box_x + text_width + padding_x * 2, box_y + total_height, false);

draw_set_color(c_white);
draw_text(box_x + padding_x, box_y + padding_top, highscore_text);
draw_text(box_x + padding_x, box_y + padding_top + line_height + padding_between, score_text);
