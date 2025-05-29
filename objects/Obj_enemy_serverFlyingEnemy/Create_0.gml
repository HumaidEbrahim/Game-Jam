
hp = 1
moveSpd = 2
xSpeed = 0
ySpeed = 0
moveDir = 0
damage_flash_timer = 0;
damage = 10;
attack_cooldown = 0;
can_attack_server = 0;
cooldown_max = 0;

score_value = 10;  // For enemy server flying

server1 = point_distance(x,y,Obj_serverDHCP.x,Obj_serverDHCP.y);
server2 = point_distance(x,y,Obj_serverDNS.x,Obj_serverDNS.y);
server3 = point_distance(x,y,Obj_serverFTP.x,Obj_serverFTP.y);
server4 = point_distance(x,y,Obj_Server.x,Obj_Server.y);
