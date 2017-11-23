/// @description try moving there
//handles merging movement vectors and updates h/v speed
ActorMovement();

//checks if an object is supposed to be destryoed on collision with an object
if(destroyOnCollide && is_Colliding){
	instance_destroy();
}
/*
if(other.isSolid && isSolid){
	var pushDir = 0;
	if(!(other.x == x && other.y ==y)) pushDir = point_direction(other.x,other.y,x,y);
	addVector(self,10,pushDir,1.5,"OLP");
	actorIn=true;	
}

*/