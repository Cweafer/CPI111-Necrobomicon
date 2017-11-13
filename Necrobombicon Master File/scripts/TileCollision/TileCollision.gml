if(isSolid)
{
	var collisionMap = layer_tilemap_get_id("CollisionTiles");
	var collisionMap2 = layer_tilemap_get_id("DestructableTiles");
	//check x collision
	if(xSpeed != 0)			//this checks for each of the four corners of the bounding box of the object
		if(checkTileAtPoints(collisionMap, collisionMap2, [bbox_right-1+xSpeed,bbox_top-1],[bbox_right-1+xSpeed,bbox_bottom-1],[bbox_left-1+xSpeed,bbox_top-1],[bbox_left-1+xSpeed,bbox_bottom-1]))
			xSpeed = 0;
	//check y collision
	if(ySpeed != 0)			//this checks for each of the four corners of the bounding box of the object
		if(checkTileAtPoints(collisionMap, collisionMap2, [bbox_right-1,bbox_top-1+ySpeed],[bbox_right-1,bbox_bottom-1+ySpeed],[bbox_left-1,bbox_top-1+ySpeed],[bbox_left-1,bbox_bottom-1+ySpeed]))
			ySpeed = 0;

	if(xSpeed != 0 && ySpeed !=0){
		if(checkTileAtPoints(collisionMap, collisionMap2, [bbox_right-1+xSpeed,bbox_top-1+ySpeed],[bbox_right-1+xSpeed,bbox_bottom-1+ySpeed],[bbox_left-1+xSpeed,bbox_top-1+ySpeed],[bbox_left-1+xSpeed,bbox_bottom-1+ySpeed])){
			xSpeed = 0;
			ySpeed = 0;
		}
	}
}