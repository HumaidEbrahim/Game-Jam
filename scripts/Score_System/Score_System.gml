function init_score() {
    global.score = 0;
    global.highscore = 0;
	global.currenthighscore = 0; 
}

function addcheck_score(amount) {
    global.score += amount;
	
	if (global.score > global.highscore) {
    global.currenthighscore = global.score;
    
}
}

function savecheck_score() {

    var file = file_text_open_write("ipconflicthighscore.txt");
    file_text_write_string(file, string(global.currenthighscore));
    file_text_close(file);
}


function check_highscore() {
    if (!variable_global_exists("score")) global.score = 0;
    if (!variable_global_exists("highscore")) global.highscore = 0;

    if (global.score > global.highscore) {
        global.currenthighscore = global.score;
    }
}

function reset_score() {
    check_highscore();
    global.score = 0;
}

function create_highscore() {
   if (file_exists("ipconflicthighscore.txt")) {
    var file = file_text_open_read("ipconflicthighscore.txt");
    global.highscore = real(file_text_read_string(file));
	global.currenthighscore = global.highscore; 
    file_text_close(file);
} else {
    global.highscore = 0;
} 
} 


