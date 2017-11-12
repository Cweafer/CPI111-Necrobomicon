var collisionMap = layer_tilemap_get_id("CollisionTiles");
//check x collision
if(xSpeed != 0)
		if(checkTileAtPoints(collisionMap,[bbox_right-1+xSpeed,bbox_top-1],[bbox_right-1+xSpeed,bbox_bottom-1],[bbox_left-1+xSpeed,bbox_top-1],[bbox_left-1+xSpeed,bbox_bottom-1]))
			xSpeed = 0;

if(ySpeed != 0){
		if(checkTileAtPoints(collisionMap,[bbox_right-1,bbox_top-1+ySpeed],[bbox_right-1,bbox_bottom-1+ySpeed],[bbox_left-1,bbox_top-1+ySpeed],[bbox_left-1,bbox_bottom-1+ySpeed])){
			ySpeed = 0;
		}
}
if(xSpeed != 0 && ySpeed !=0)
	if(checkTileAtPoints(collisionMap,[bbox_right-1+xSpeed,bbox_top-1+ySpeed],[bbox_right-1+xSpeed,bbox_bottom-1+ySpeed],[bbox_left-1+xSpeed,bbox_top-1+ySpeed],[bbox_left-1+xSpeed,bbox_bottom-1+ySpeed])){
			if(xSpeed>ySpeed)
				xSpeed = 0;
			else
				ySpeed = 0;
	}