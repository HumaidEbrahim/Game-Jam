global.tickTimer += 1;
if(global.tickTimer mod 60 == 0){
	with(Obj_Server){
		hp -= 1;
		global.corruption += 1;
	}
}





wait_time_frames = 6*100;

//this is where i check if there are any enemies on the map
if (instance_exists(Obj_enemy_playerenemy_enemy1)) {
    wait = false;
    timer = 0;
    wave_spawned = false;
} 
else {//if there arent any enemies, it wil wait a certain time.
    if (!wait) {
        wait = true;
        timer = 0;
        show_debug_message("No enemies found. Starting 5-second wait...");//this is for error handling, to know if this statement works or not
    } else {
        timer += 1;//increment the time
		//if the timer is bigger than wait time and wave_spawned is true, it will do the following
		//note the wave_spawned is FALSE, so !wave_spawned is actualy TRUE, keep in mind.
        if (timer >= wait_time_frames && !wave_spawned) {
            show_debug_message("5 seconds passed. Spawning wave of " + string(num_of_enemies));
			//my lil dic to actaully have the enemies spawn in the corners in a for loop
            var spawn_points = [
                [79, 20],//top left
                [120, 1027],//top_right
                [1809, 20],//bottom_left
                [1880, 1055]//bootom_right
            ];
			//this is the for loop, that prints out the number of enemies for each round
			var serverenemy_random_spawn = choose(0,1,3,4);

            for (var i = 0; i < num_of_enemies; i++) {
                var point = spawn_points[i mod array_length(spawn_points)];
                instance_create_depth(point[0], point[1], depth - 1, Obj_enemy_playerenemy_enemy1);
				if ((i mod array_length(spawn_points)) == 0 || (i mod array_length(spawn_points)) == 1) {
					var server_point = spawn_points[serverenemy_random_spawn];
					instance_create_depth(server_point[0], server_point[1], depth - 1, Obj_enemy_serverenemy_enemy1);
				}
            }

            num_of_enemies = ceil(num_of_enemies * 1.3); // increase enemies, and round up, cause we cant have half a enemy
            wave_spawned = true;
            wait = false;
            timer = 0;
        }
    }
}


