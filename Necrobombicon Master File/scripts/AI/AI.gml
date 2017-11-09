if ( global.actor_allowUpdate == true )
{
	with(Skeleton_obj){
		randQuantcol = irandom_range(1,4);

		if(timer == 50)
		{//the ol pause
			intendedSpeed = 0;
			ThrowProjectile();
		}
		if(timer == 100)
		{
			if(randQuat == randQuantcol)
			{
				intendedDir=point_direction(x,y,Player_obj.x,Player_obj.y);
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
}
