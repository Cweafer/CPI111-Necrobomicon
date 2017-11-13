/// @description Insert description here
// You can write your code in this editor
if(!Player_obj.isInvincible)
{
	instance_destroy();
	Player_obj.healthCurrent -=damage;
	Player_obj.isInvincible = true;
	Player_obj.image_index = 0;
}
