// Inherit the parent event
event_inherited();

text[0] = ""
text[1] = "Congratulations on fixing your mess"
if ((global.score < global.highscore) || (global.score == global.highscore))
{
	text[2] = "You got a score of: " + string(global.score); 
}
else if(global.score > global.highscore)
{
	text[2] = "You beat the highscore with: " + string(global.score); 
}

text[3] = "As your reward..."
text[4] = "YOU'RE FIRED!"
text[5] = ""




text_last = 5;

fadeto = Obj_Fade_MainMenu

