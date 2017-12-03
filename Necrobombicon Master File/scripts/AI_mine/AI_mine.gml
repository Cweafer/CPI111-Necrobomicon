if ( global.actor_allowUpdate && canMove && !isInvincible )
{
	if (timer == 200)
	{
		timer = 0;
	}
	if (timer == 0)
	{
		intendedDir = point_direction(x,y,Player_obj.x,Player_obj.y);
		intendedSpeed = maxSpeed;
	}
	else
	{
		// bounce code
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
		}
	}
	if (intendedSpeed > 1)
		intendedSpeed -= .05;
	timer++;
	image_speed = intendedSpeed / maxSpeed;
}
