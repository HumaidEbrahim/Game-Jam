if text_current < text_last
{
	var _len = string_length(text[text_current]);
if (char_current < _len)
    {
    char_current = _len;
    }
else
    {
    text_current += 1;
    if (text_current >= text_last)
        {
        instance_create_layer(0, 0, "Instances", fadeto);

        }
    else
        {
        text[text_current] = string_wrap(text[text_current], text_width);
        char_current = 0;
        }
    }
}

