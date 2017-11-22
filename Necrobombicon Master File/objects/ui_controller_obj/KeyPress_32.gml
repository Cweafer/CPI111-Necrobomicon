/// @description Insert description here
// You can write your code in this editor
if (!global.actor_allowUpdate)
{
	switch(menuPos)
	{
		case 1: global.actor_allowUpdate = true; break;
		case 2: game_end(); break;
	}
	
}