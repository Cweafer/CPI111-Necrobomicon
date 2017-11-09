/// @description 
event_inherited(); //call the methods in the parent first

type = actor_type.player;
moveSpeed = 8;

// set variables to not 0 (testing purposes, maybe delete later)
// find a better way to instantiate these on game start?
healthMax = 5;
healthCurrent = healthMax;

///      player specific          //
bombCount = 0;

// bomb and sig enums and initialization
enum bombType {
	base,
	remote,
	fuse,
	grenade,
	rocket,
	bounce
}
enum sigType {
	clear,
	fire,
	air,
	freeze,
	body,
	time,
	logic
}
currentBombType = bombType.base;
currentSigType = sigType.clear;

// populate animation array
spriteArray[anim.idle, dir.north] = up_idle;
spriteArray[anim.idle, dir.northeast] = up_idle;
spriteArray[anim.idle, dir.northwest] = up_idle;
spriteArray[anim.idle, dir.south] = down_idle;
spriteArray[anim.idle, dir.southeast] = down_idle;
spriteArray[anim.idle, dir.southwest] = down_idle;
spriteArray[anim.idle, dir.east] = right_idle;
spriteArray[anim.idle, dir.west] = left_idle;

spriteArray[anim.move, dir.north] = up_Spr;
spriteArray[anim.move, dir.northeast] = up_Spr;
spriteArray[anim.move, dir.northwest] = up_Spr;
spriteArray[anim.move, dir.south] = down_Spr;
spriteArray[anim.move, dir.southeast] = down_Spr;
spriteArray[anim.move, dir.southwest] = down_Spr;
spriteArray[anim.move, dir.east] = right_Spr;
spriteArray[anim.move, dir.west] = left_Spr;