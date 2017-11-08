/// @description Insert description here
// You can write your code in this editor
if(paused == false)
{
	paused = true;
	pause_sprite = sprite_create_from_surface(application_surface,0,0,1024,720,false,true,0,0);
	instance_deactivate_all(true);
}
else if(paused == true)
{
	instance_activate_all();
	paused = false;
}