var bombToSpawn, var bombHeight, var bombWidth, var xPos, var yPos;
var collisionMap = layer_tilemap_get_id("CollisionTiles");
var collisionMap2 = layer_tilemap_get_id("DestructableTiles");
var playAnim = true;

switch(roomController.currentBombType)
{
	case bombType.fuse:
		bombToSpawn = Fuse_Bomb;
		xPos = lengthdir_x(60,intendedDir)+x;
		yPos = lengthdir_y(70,intendedDir)+y;
		bombHeight = sprite_get_height(bombToSpawn);
		bombWidth = sprite_get_width(bombToSpawn);
		with(instance_create_layer(xPos,yPos, "instances", bombToSpawn)){
			addVector(self,2,other.intendedDir,10,"init");
			alarm[0] = room_speed * 2;
		}
		break;
	case bombType.bounce:
		bombToSpawn = Bounce_Bomb;
		xPos = lengthdir_x(100,intendedDir)+x;
		yPos = lengthdir_y(100,intendedDir)+y;
		bombHeight = sprite_get_height(bombToSpawn);
		bombWidth = sprite_get_width(bombToSpawn);
		with(instance_create_layer(xPos,yPos, "instances", bombToSpawn)){
			intendedDir = Player_obj.intendedDir;
			intendedSpeed = 6;
		}
		break;
	case bombType.grenade:
		bombToSpawn = Grenade_Bomb;
		xPos = lengthdir_x(60,intendedDir)+x;
		yPos = lengthdir_y(70,intendedDir)+y;
		bombHeight = sprite_get_height(bombToSpawn);
		bombWidth = sprite_get_width(bombToSpawn);
		break;
	case bombType.remote:
		bombToSpawn = Remote_Bomb;
		xPos = lengthdir_x(60,intendedDir)+x;
		yPos = lengthdir_y(70,intendedDir)+y;
		bombHeight = sprite_get_height(bombToSpawn);
		bombWidth = sprite_get_width(bombToSpawn);
		if (!instance_exists(Remote_Bomb))
		{
			with(instance_create_layer(xPos,yPos, "instances", bombToSpawn)){
				addVector(self,2,other.intendedDir,10,"init");
			}
		}
		else
			playAnim = false;
		break;
	case bombType.rocket:
		bombToSpawn = Rocket_Bomb;
		xPos = lengthdir_x(100,intendedDir)+x;
		yPos = lengthdir_y(100,intendedDir)+y;
		bombHeight = sprite_get_height(bombToSpawn);
		bombWidth = sprite_get_width(bombToSpawn);
		with(instance_create_layer(xPos,yPos, "instances", bombToSpawn)){
			intendedDir = other.intendedDir;
			intendedSpeed = 12;
		}
		break;
	default: // base bomb 
		bombToSpawn = Base_Bomb;
		xPos = lengthdir_x(60,intendedDir)+x;
		yPos = lengthdir_y(70,intendedDir)+y;
		bombHeight = sprite_get_height(bombToSpawn);
		bombWidth = sprite_get_width(bombToSpawn);
		with(instance_create_layer(xPos,yPos, "instances", bombToSpawn)){
			addVector(self,10,other.intendedDir,25,"init");
			alarm[0] = 50;
		}
		break;
}
if(playAnim)
{
	attacking = true;
	image_index = 0;
}