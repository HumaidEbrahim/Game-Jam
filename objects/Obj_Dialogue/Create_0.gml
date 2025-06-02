text[0] = "Hi Mo";
text[1] = "I love you";

text_width = 300;
text_current = 0;
text_last = 1;

text_x = 314;
text_y =150;

char_current = 1;
char_speed = 0.25;

text[text_current] = string_wrap(text[text_current], text_width)

fadeto = Obj_Fade