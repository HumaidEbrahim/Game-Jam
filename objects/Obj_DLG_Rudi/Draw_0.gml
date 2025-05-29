draw_self()
draw_set_font(Font_UI);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white)

if(text[text_current].speaker == "Char")
{
	text_x = 701
	text_y = 430
}
else 
{
	text_x = 314;
	text_y =150;
}

var _len = string_length(text[text_current].line);
if (char_current < _len)
    {
    char_current += char_speed;
    }

var _str = string_copy(text[text_current].line, 1, char_current);
draw_text(text_x, text_y,  _str);