/// @description Insert description here
// You can write your code in this editor
event_inherited();
destroyOnCollide = true;
for (i = 0; i <= 3; i++) // represents different anim types, increment the 3 if more types are used
{
	for (j = 0; j <= 7; j++) //represents eight directions, don't touch
	{
		spriteArray[i, j] = bone_spr;
	}
}	