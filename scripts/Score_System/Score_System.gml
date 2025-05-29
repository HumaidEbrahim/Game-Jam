function init_score() {
    global.score = 0;
    global.highscore = 0;
}

function addcheck_score(amount) {
    global.score += amount;
	
	if (global.score > global.highscore) {
    global.highscore = global.score;
    
    var file = file_text_open_write("highscore.txt");
    file_text_write_string(file, string(global.highscore));
    file_text_close(file);
}
}

function check_highscore() {
    if (!variable_global_exists("score")) global.score = 0;
    if (!variable_global_exists("highscore")) global.highscore = 0;

    if (global.score > global.highscore) {
        global.highscore = global.score;
    }
}

function reset_score() {
    check_highscore();
    global.score = 0;
}

function create_highscore() {
   if (file_exists("highscore.txt")) {
    var file = file_text_open_read("highscore.txt");
    global.highscore = real(file_text_read_string(file));
    file_text_close(file);
} else {
    global.highscore = 0;
} 
} 


