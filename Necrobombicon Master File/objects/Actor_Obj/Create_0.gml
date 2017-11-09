/// @description Decision Phase
/// Define the instance variables shared by all actors
obj_type = "actor";

//movement instance variables
canMove = true;//used for locking in movement vector
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