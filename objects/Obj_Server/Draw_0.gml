//okay here i want to see how much health i actually have

draw_self()

draw_set_font(Font_UI_Small)
draw_text(x, y, string(hp));

// Distance to player
var dist = point_distance(x, y, Obj_player.x, Obj_player.y);

// Pickup radius
var radius = 80;

// Check if within range
if (dist < radius) {
    draw_text(x,y - 50, "Press Right Green to enter boss arena");
    // If player presses a key (like E)
    if (keyboard_check_pressed(ord("F"))) {
		if (!instance_exists(Obj_Fade_Lance)) {
		instance_create_layer(0, 0, "Instances", Obj_Fade_Lance);
		}
    }
}
draw_set_font(Font_UI)