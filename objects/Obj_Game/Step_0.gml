global.tickTimer += 1;
if(global.tickTimer mod 240 == 0){
	with(Obj_Server){
		hp -= 1;
		global.corruption += 1;
	}
}
if global.corruption >= global.maxCorruption {
		global.baseCooldown = 60;
		if global.maxHp > 50 {
		global.maxHp = 50;
		}
		// Transition to Boss Room
		if (!instance_exists(Obj_Fade_Lance)) {
			instance_create_layer(0, 0, "Instances", Obj_Fade_Lance);
		}

		
}

if global.corruption < 500 {
	global.baseCooldown = 0;
	global.dropRate = 20;
}

else if global.corruption >= 500 && global.corruption < 1000{
	if global.baseCooldown < 15 {
	 global.baseCooldown = 15;
	}
	if global.maxHp > 200 {
		global.maxHp = 200;
	}
	global.dropRate = 15;
	}
	
else if global.corruption >= 1000 && global.corruption < 1500{
	if global.baseCooldown < 30 {
	 global.baseCooldown = 30;
	}
	if global.maxHp > 150 {
		global.maxHp = 150;
	}
	global.dropRate = 10;
}
else if global.corruption >= 1500 && global.corruption < 2000{
	if global.baseCooldown < 45 {
	 global.baseCooldown = 45;
	}
	if global.maxHp > 120 {
		global.maxHp = 120;
	}
	global.dropRate = 5;
	
}

wait_time_frames = 60;

//this is where i check if there are any enemies on the map
if (instance_exists(Obj_Enemy)) {
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
                [79, 20],//top left 0
                [120, 1027],//top_right 1
                [1809, 20],//bottom_left 2
                [1880, 1055]//bottom_right 3
            ];
			//this is the for loop, that prints out the number of enemies for each round
			//var serverenemy_random_spawn = choose(0,1,2,3);
			var spawn_len = array_length(spawn_points);
			var serverenemy_random_spawn = random(ceil(spawn_len));
			show_debug_message("Random server enemy spawn index: " + string(serverenemy_random_spawn));

            for (var i = 0; i < num_of_enemies; i++) {
                var point = spawn_points[i mod array_length(spawn_points)];
                instance_create_depth(point[0], point[1], depth - 1, Obj_enemy_playerenemy_enemy1);
				if ((i mod array_length(spawn_points)) == 0 || (i mod array_length(spawn_points)) == 1) {
					var server_point = spawn_points[serverenemy_random_spawn];
					instance_create_depth(server_point[0], server_point[1], depth - 1, Obj_enemy_serverenemy_enemy1);
					instance_create_depth(server_point[0], server_point[1], depth - 1, Obj_enemy_playerenemy_Gun_enemy);
					instance_create_depth(server_point[0], server_point[1], depth - 1, Obj_enemy_serverFlyingEnemy);
					
				}
            }

            num_of_enemies = ceil(num_of_enemies * 1.1); // increase enemies, and round up, cause we cant have half a enemy
            wave_spawned = true;
            wait = false;
            timer = 0;
        }
    }
}


