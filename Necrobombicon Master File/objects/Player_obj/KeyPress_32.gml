/// @description Insert description here
// You can write your code in this editor
var xPos = lengthdir_x(60,intendedDir)+x;
var yPos = lengthdir_y(70,intendedDir)+y;
var bombHeight = 80;
var bombWidth = 80;
var collisionMap = layer_tilemap_get_id("CollisionTiles");

var bombToSpawn = Bomb_Obj;
if(!place_meeting(xPos,yPos, Bomb_Obj)&& !checkTileAtPoints(collisionMap, [xPos +bombWidth/2,yPos+bombHeight/2],[xPos -bombWidth/2,yPos+bombHeight/2],[xPos +bombWidth/2,yPos-bombHeight/2],[xPos -bombWidth/2,yPos-bombHeight/2])){
	with(instance_create_layer(xPos,yPos, "instances", bombToSpawn)){
		addVector(self,2,other.intendedDir,10,"init");
	}
}