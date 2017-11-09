if ( global.actor_allowUpdate == true )
{
	randQuantcol = irandom_range(1,4);

	if(timer == 50)
	{//the ol pause
		intendedSpeed = 0;
	}
	if(timer == 100)
	{
		if(randQuat == randQuantcol)
		{
			intendedDir=point_direction(Skeleton_obj.x,Skeleton_obj.y,Player_obj.x,Player_obj.y);
			intendedSpeed = 12;
		}
		else
		{
		intendedDir = irandom_range(0,359);
		intendedSpeed = 4;
		}
		timer = 0;
	}
	else
	{
	timer++;
	}
}
