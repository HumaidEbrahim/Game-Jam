
init_score();
create_highscore(); 

global.tickTimer = 0;

//okay this is where ima create all my variables for my wave spawning
audio_stop_sound(GJMenu);
audio_stop_sound(finalboss);
audio_stop_sound(main_BG);
audio_play_sound(main_BG,1,true);
wave = false;
timer = 0;
spawnTime = 6*40;
num_of_enemies = 4;
serverenemy_random_spawn = 0;
time_between_rounds = 0;
wait = false;
wait_time_frames = 0;
spawned_enemies = false;
wave_timer = 0;
wave_spawned = false;
time_between_waves = 60;



