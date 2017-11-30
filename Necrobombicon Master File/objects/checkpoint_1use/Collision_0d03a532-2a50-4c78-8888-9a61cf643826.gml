/// @description Insert description here
// You can write your code in this editor
if (Player_obj.healthCurrent > 0)
{
	game_save("Save.dat");
	global.saved = true;
	instance_destroy(self);
}