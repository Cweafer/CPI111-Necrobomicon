if(bombMagnet)
{
	with(Bomb_Obj)
	{
		addVector(self, 1.5, point_direction(x,y,Player_obj.x,Player_obj.y), 0, "Magnet");
	}
}