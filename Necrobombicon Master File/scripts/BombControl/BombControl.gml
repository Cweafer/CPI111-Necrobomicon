var bombToSpawn;
var bombHeight = 65;
var bombWidth = 65;
var xPos = lengthdir_x(60,intendedDir)+x;
var yPos = lengthdir_y(70,intendedDir)+y;
var collisionMap = layer_tilemap_get_id("CollisionTiles");
var collisionMap2 = layer_tilemap_get_id("DestructableTiles");

switch(roomController.currentBombType)
{
	case bombType.fuse:
		bombToSpawn = Fuse_Bomb;
		if(!place_meeting(xPos,yPos, Bomb_Obj)&& !checkTileAtPoints(collisionMap, collisionMap2, [xPos +bombWidth/2,yPos+bombHeight/2],[xPos -bombWidth/2,yPos+bombHeight/2],[xPos +bombWidth/2,yPos-bombHeight/2],[xPos -bombWidth/2,yPos-bombHeight/2])){
			with(instance_create_layer(xPos,yPos, "instances", bombToSpawn)){
				addVector(self,2,other.intendedDir,10,"init");
				alarm[0] = 100;
			}
		}
		break;
	case bombType.bounce:
	case bombType.grenade:
	case bombType.remote:
	case bombType.rocket:
	default: // base bomb 
		bombToSpawn = Base_Bomb;
		if(!place_meeting(xPos,yPos, Bomb_Obj)&& !checkTileAtPoints(collisionMap, collisionMap2, [xPos +bombWidth/2,yPos+bombHeight/2],[xPos -bombWidth/2,yPos+bombHeight/2],[xPos +bombWidth/2,yPos-bombHeight/2],[xPos -bombWidth/2,yPos-bombHeight/2])){
			with(instance_create_layer(xPos,yPos, "instances", bombToSpawn)){
				addVector(self,2,other.intendedDir,10,"init");
			}
		}
		break;
}
attacking = true;
image_index = 0;