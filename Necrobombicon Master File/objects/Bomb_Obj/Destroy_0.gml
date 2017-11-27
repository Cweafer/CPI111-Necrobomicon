/// @description Insert description here
// You can write your code in this editor
if (!inWall)
{
	switch (Player_obj.currentSigType)
	{
		case sigType.air: 
			instance_create_layer(x,y, "instances", Explosion_Air); break;
		case sigType.freeze:
			instance_create_layer(x,y, "instances", Explosion_Freeze); break;
		default: // includes sigType.clear
			instance_create_layer(x,y, "instances", Explosion_Basic);
	}
}