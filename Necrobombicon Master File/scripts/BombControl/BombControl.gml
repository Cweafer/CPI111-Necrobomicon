//base bomb
if(currentBombType == bombType.base){
var xPos = lengthdir_x(60,intendedDir)+x;
var yPos = lengthdir_y(70,intendedDir)+y;
var bombHeight = 80;
var bombWidth = 80;
var collisionMap = layer_tilemap_get_id("CollisionTiles");
var collisionMap2 = layer_tilemap_get_id("DestructableTiles");

var bombToSpawn = Base_Bomb;
if(!place_meeting(xPos,yPos, Bomb_Obj)&& !checkTileAtPoints(collisionMap, collisionMap2, [xPos +bombWidth/2,yPos+bombHeight/2],[xPos -bombWidth/2,yPos+bombHeight/2],[xPos +bombWidth/2,yPos-bombHeight/2],[xPos -bombWidth/2,yPos-bombHeight/2])){
	with(instance_create_layer(xPos,yPos, "instances", bombToSpawn)){
		addVector(self,2,other.intendedDir,10,"init");
	}
}

attacking = true;
image_index = 0;
}
if(currentBombType == bombType.bounce){
//insert code here
}
if(currentBombType == bombType.fuse){
//insert code here
}
if(currentBombType == bombType.grenade){
//insert code here
}
if(currentBombType == bombType.remote){
//insert code here
}
if(currentBombType == bombType.rocket){
//insert code here
}