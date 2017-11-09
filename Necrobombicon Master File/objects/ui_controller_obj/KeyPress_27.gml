///@description ESC : pause menu
if(global.actor_allowUpdate) 
{
	//PAUSING
	global.actor_allowUpdate = false;
}
else
{
	//UNPAUSING
	global.actor_allowUpdate = true;
}

menuPos = 1;
menuNumOfOptions = 2;