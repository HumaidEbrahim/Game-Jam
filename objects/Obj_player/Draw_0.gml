draw_self()
var bar_x1 = 20;
var bar_y1 = 20;
var bar_x2 = 600;
var bar_y2 = 80;
/*
var _camX = camera_get_view_x( view_camera[0] )
var _camY = camera_get_view_y( view_camera[0] )

var _hpString = "HP: " + string(playerHp) + "/" + string(playerMaxHp)
draw_text(_camX + 50, _camY + 50, _hpString)
*/
draw_text(bar_x1, bar_y2 - 30, string(hp) + " / " + string(global.maxHp));
draw_text(bar_x1, bar_y2 + 20, string(global.corruption) + " / " + string(global.maxCorruption));


// Draw the Corruption
draw_healthbar(bar_x1, bar_y1 + 20, bar_x2, bar_y2 + 20, global.corruption, c_black, c_blue, c_purple, 0, true, true);


// Optional: Draw "HP" label above the health bar
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white); // Set text color
draw_text(bar_x1, bar_y1 - 40, "HP");

// Draw the actual health bar
draw_healthbar(bar_x1, bar_y1, bar_x2, bar_y2, hp, c_black, c_red, c_lime, 0, true, true);

