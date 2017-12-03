/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(isCollidingX || isCollidingY)
{
	if (isCollidingX)
	{
		if ((intendedDir > 270) && (intendedDir < 360)) //southeast
			intendedDir -= 90;
		else if ((intendedDir > 0) && (intendedDir < 90)) //northeast
			intendedDir += 90;
		else if ((intendedDir > 180) && (intendedDir < 270)) //southwest
			intendedDir += 90;
		else if ((intendedDir > 90) && (intendedDir < 180)) //northwest
			intendedDir -= 90;
		else
			intendedDir += 180;
	}
	if (isCollidingY)
	{
		if ((intendedDir > 270) && (intendedDir < 360)) //southeast
			intendedDir += 90;
		else if ((intendedDir > 0) && (intendedDir < 90)) //northeast
			intendedDir -= 90;
		else if ((intendedDir > 180) && (intendedDir < 270)) //southwest
			intendedDir -= 90;
		else if ((intendedDir > 90) && (intendedDir < 180)) //northwest
			intendedDir += 90;
		else
			intendedDir += 180;
	}
	
	if (intendedDir >= 360)
	{
		intendedDir -= 360;
	}
	else if (intendedDir < 0)
	{
		intendedDir += 360;
	}
	
	intendedSpeed = 6;
	numBounces++;
	if (numBounces > 5)
		instance_destroy();
}