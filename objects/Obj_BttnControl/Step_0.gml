var upKey = keyboard_check_pressed(ord("W"));
var downKey = keyboard_check_pressed(ord("S"));
var selectKey  = keyboard_check_pressed(ord("F"));

if (downKey)
{
	selected += 1
	if(selected >= array_length(options)) 
	{
		selected = 0
	}
		
}

if (upKey)
{
	selected -= 1
	if(selected < 0)
		selected = array_length(options) - 1
}

if(selectKey)
{
	switch(options[selected])
	{
		case "Play":
		    instance_create_layer(0, 0, "Instances", Obj_Fade_Intro);
			break
		case "Help":
			room_goto(Room_Help)
			break
		case "Credits":
			room_goto(Room_Credits)
			break
		case "Quit":
			game_end()
			break
	
	}
}

if (selected == 0 && !instance_exists(play_button)) {
    play_button = instance_create_layer(962, 400, "Instances", Obj_Button_Play);
} else if (selected != 0 && instance_exists(play_button)) {
    instance_destroy(play_button);
}
