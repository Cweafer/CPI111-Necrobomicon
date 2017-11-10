if(global.actor_allowUpdate){
	if(xSpeed > maxSpeed) xSpeed = maxSpeed;
	if(ySpeed > maxSpeed) ySpeed = maxSpeed;
	x += xSpeed;
	y += ySpeed;
}