/// @description Decision Phase
/// Define the instance variables shared by all actors
enum actor_type {
	actor = 0,
	player = 1,
	enemy = 2,
	projectile = 3,
	bomb = 4,
	loose = 5,
	tile = 6
}
//movement instance variables
type = actor_type.actor;//default type
canMove = true;//used for locking in movement vector
attacking = false;//used for attack animations and cooldowns
pushable = false;
moveSpeed = 0; 
intendedDir = 0;
intendedSpeed = 0;
xSpeed = 0;
ySpeed = 0;

//magnitude
environmentVectMag = ds_list_create();
//direction
environmentVectDir = ds_list_create(); 
//decelleration
environmentVectDec = ds_list_create();

//collision instance variables
isSolid = true;

//attribute instance variables
healthMax = 0;
healthCurrent = 0;

//array to hold all sprites (must be filled out individually in all actor create events!)
enum anim {
	idle = 0,
	move = 1,
	hit = 2,
	hurt = 3
}
enum dir {
	north = 0,
	east = 1,
	south = 2,
	west = 3,
	northeast = 4,
	northwest = 5,
	southeast = 6,
	southwest = 7
}
currentDirection = dir.south;
// undefined in spriteArray means said sprite does not exist
for (i = 0; i <= 3; i++) // represents different anim types, increment the 3 if more types are used
{
	for (j = 0; j <= 7; j++) //represents eight directions, don't touch
	{
		spriteArray[i, j] = undefined;
	}
}	
// example usage: spriteArray[anim.idle, dir.down] = skeleton_frontidle;
/* TEMPLATE for create event of actors: 
(feel free to delete lines you don't need, they should all be initialized to undefined)
spriteArray[anim.idle, dir.north] = 
spriteArray[anim.idle, dir.northeast] = 
spriteArray[anim.idle, dir.northwest] = 
spriteArray[anim.idle, dir.south] = 
spriteArray[anim.idle, dir.southeast] = 
spriteArray[anim.idle, dir.southwest] = 
spriteArray[anim.idle, dir.east] = 
spriteArray[anim.idle, dir.west] = 

spriteArray[anim.move, dir.north] = 
spriteArray[anim.move, dir.northeast] = 
spriteArray[anim.move, dir.northwest] = 
spriteArray[anim.move, dir.south] = 
spriteArray[anim.move, dir.southeast] = 
spriteArray[anim.move, dir.southwest] = 
spriteArray[anim.move, dir.east] = 
spriteArray[anim.move, dir.west] = 
*/