if(bombMagnet)
{
	with(Bomb_Obj)
	{
		addVector(self, 2, point_direction(x,y,Player_obj.x,Player_obj.y), 1, "Magnet");
	}
}