/// @description Insert description here
// You can write your code in this editor
event_inherited();


timer = 0;
randQuat = irandom_range(1,4);
intendedDir = 45;
intendedSpeed = 5;

healthMax = 1;
healthCurrent = healthMax;
damage = 2;

canMove = true;

// sprite array stuff
spriteArray[anim.idle, dir.north] = skeleton_backIdle;
spriteArray[anim.idle, dir.northeast] = skeleton_backIdle;
spriteArray[anim.idle, dir.northwest] = skeleton_backIdle;
spriteArray[anim.idle, dir.south] = skeleton_frontIdle;
spriteArray[anim.idle, dir.southeast] = skeleton_frontIdle;
spriteArray[anim.idle, dir.southwest] = skeleton_frontIdle;
spriteArray[anim.idle, dir.east] = skeleton_frontIdle;
spriteArray[anim.idle, dir.west] = skeleton_frontIdle;

spriteArray[anim.move, dir.north] = skeleton_walkBack;
spriteArray[anim.move, dir.northeast] = skeleton_walkBack;
spriteArray[anim.move, dir.northwest] = skeleton_walkBack;
spriteArray[anim.move, dir.south] = skeleton_walkingForward;
spriteArray[anim.move, dir.southeast] = skeleton_walkingForward;
spriteArray[anim.move, dir.southwest] = skeleton_walkingForward;
spriteArray[anim.move, dir.east] = skeleton_walkRight;
spriteArray[anim.move, dir.west] = skeleton_walkingLeft;

spriteArray[anim.hit, dir.north] = skeleton_hitUp;
spriteArray[anim.hit, dir.northeast] = skeleton_hitUp;
spriteArray[anim.hit, dir.northwest] = skeleton_hitUp;
spriteArray[anim.hit, dir.south] = skeleton_hitDown;
spriteArray[anim.hit, dir.southeast] = skeleton_hitDown;
spriteArray[anim.hit, dir.southwest] = skeleton_hitDown;
spriteArray[anim.hit, dir.east] = skeleton_hitRight;
spriteArray[anim.hit, dir.west] = skeleton_hitLeft;

for (i = 0; i <= 8; i++)
{
	spriteArray[anim.hurt, i] = skeleton_hurt;
}

// sets the object mask to the same as the down idle (don't have to edit other collision masks anymore)
mask_index = spriteArray[anim.idle, dir.south];