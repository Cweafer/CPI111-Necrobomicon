/// @description Insert description here
// You can write your code in this editor

event_inherited(); //call the methods in the parent first
moveSpeed = 8;

// set variables to not 0 (testing purposes, maybe delete later)
// find a better way to instantiate these on game start?
healthMax = 5;
healthCurrent = healthMax;

//player specific
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