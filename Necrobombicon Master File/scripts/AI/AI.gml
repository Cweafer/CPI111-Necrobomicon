if ( global.actor_allowUpdate == true && !isInvincible )
{
	with(Skeleton_obj){
		randQuantcol = irandom_range(1,4);

		if(timer == 150)
		{//the ol pause
			intendedSpeed = 0;
			ThrowProjectile(bone_projectile_obj);
		}
		if(timer == 250)
		{
			if(randQuat == randQuantcol)
			{
				intendedDir=point_direction(x,y,Player_obj.x,Player_obj.y);
				intendedSpeed = 6;
			}
			else
			{
			intendedDir = irandom_range(0,359);
			intendedSpeed = 2;
			}
			timer = 0;
		}
		else
		{
		timer++;
		}
	}
}
