//this needs to be cleaned up and reogranized to be more robust 

if(global.actor_allowUpdate)
{
	if ((intendedDir >= 337.5) || (intendedDir <= 22.5))
		currentDirection = dir.east;
	else if ((intendedDir > 22.5) && (intendedDir < 67.5))
		currentDirection = dir.northeast;
	else if ((intendedDir >= 67.5) && (intendedDir <= 112.5))
		currentDirection = dir.north;
	else if ((intendedDir > 112.5) && (intendedDir < 157.5))
		currentDirection = dir.northwest;
	else if ((intendedDir >= 157.5) && (intendedDir <= 202.5))
		currentDirection = dir.west;
	else if ((intendedDir > 202.5) && (intendedDir < 247.5))
		currentDirection = dir.southwest;
	else if ((intendedDir >= 247.5) && (intendedDir <= 292.5))
		currentDirection = dir.south;
	else if ((intendedDir > 292.5) && (intendedDir < 337.5))
		currentDirection = dir.southeast;
	
	//handle movement animation
	if(intendedSpeed != 0)
	{
		if (spriteArray[anim.move, currentDirection] != undefined)
			sprite_index = spriteArray[anim.move, currentDirection];
	}
	else
	//handles idle animations
	if(intendedSpeed == 0)
	{	
		if (spriteArray[anim.idle, currentDirection] != undefined)
			sprite_index = spriteArray[anim.idle, currentDirection];
	}
}