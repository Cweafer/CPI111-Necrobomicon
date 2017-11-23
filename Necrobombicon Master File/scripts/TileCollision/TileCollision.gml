is_Colliding = false;
if(isSolid)
{
	//check x collision
	if(xSpeed != 0)			//this checks for each of the four corners of the bounding box of the object
		if(checkTileCollision(self,xSpeed,0) || place_meeting(x+xSpeed,y,Door)){
			xSpeed = 0;
			is_Colliding = true;
		}
	//check y collision
	if(ySpeed != 0)			//this checks for each of the four corners of the bounding box of the object
		if(checkTileCollision(self,0,ySpeed) || place_meeting(x,y+ySpeed,Door)){
			is_Colliding = true;
			ySpeed = 0;
		}
	if(xSpeed != 0 && ySpeed !=0){
		if(checkTileCollision(self,xSpeed,ySpeed) || place_meeting(x+xSpeed,y+ySpeed,Door)){
			xSpeed = 0;
			ySpeed = 0;
			is_Colliding = true;
		}
	}
}