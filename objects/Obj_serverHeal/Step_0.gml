if despawnTimer > 0{
	despawnTimer--;
	if despawnTimer <= 0 {
		instance_destroy();	
	}
}