//we can change these if we decide on different controls
var mov_UP = vk_up;
var mov_DOWN = vk_down;
var mov_LEFT = vk_left;
var mov_RIGHT = vk_right;
var but_START = vk_shift; //placeholder
var but_ACTION = vk_space;

var ourdir =1;

if keyboard_check(mov_UP){
 if keyboard_check(mov_RIGHT) {
	ourdir = 45;
 }
 else
	if keyboard_check(mov_LEFT) {
		ourdir = 135;
	}
	else
		ourdir = 90;
}
else
	if keyboard_check(mov_DOWN){
		if keyboard_check(mov_RIGHT) {
			ourdir = 315;
		}
		else
			if keyboard_check(mov_LEFT) {
				ourdir = 225;
			}
			else
				ourdir = 270;
	}
	else{
		if keyboard_check(mov_LEFT)
			ourdir = 180;
		else
			if keyboard_check(mov_RIGHT)
				ourdir = 0;
	}



if(ourdir!=1){
	intendedDir = ourdir;
	intendedSpeed = moveSpeed;
}
else
	intendedSpeed = 0;
	