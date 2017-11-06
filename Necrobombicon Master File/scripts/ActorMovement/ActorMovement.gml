//check if each actor canMove [variable stored in actor] and global actors are allowed to move [variable stored in gameSystem Handler]
if(canMove == true && global.actor_allowUpdate){
	xSpeed = environSpeedX + lengthdir_x(intendedSpeed,intendedDir);
	ySpeed = environSpeedY + lengthdir_y(intendedSpeed,intendedDir);
}