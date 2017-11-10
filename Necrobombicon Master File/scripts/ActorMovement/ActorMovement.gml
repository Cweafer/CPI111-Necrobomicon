//sum environmental vectors together and split into x and y
var environSpeedX = 0;
var environSpeedY = 0;
j = ds_list_size(environmentVectMag);
for(i=0; i < j; i++){
	//check if the magnitude hasn't fallen to zero, otherwise delete vector
	if(ds_list_find_value(environmentVectMag,i) > 1){
		//split vectors for addition
		environSpeedX += lengthdir_x(ds_list_find_value(environmentVectMag,i), ds_list_find_value(environmentVectDir,i));
		environSpeedY += lengthdir_y(ds_list_find_value(environmentVectMag,i), ds_list_find_value(environmentVectDir,i));
		//add the deceleration to the magnitude
		ds_list_replace(environmentVectMag, i, ds_list_find_value(environmentVectMag,i) - ds_list_find_value(environmentVectMag,i) / ds_list_find_value(environmentVectDec,i));
	}
	else{
		ds_list_delete(environmentVectMag,i);
		ds_list_delete(environmentVectDir,i);
		ds_list_delete(environmentVectDec,i);
	}
}

//check if each actor canMove [variable stored in actor] and global actors are allowed to move [variable stored in gameSystem Handler]
if(canMove == true && global.actor_allowUpdate){
	xSpeed = environSpeedX + lengthdir_x(intendedSpeed,intendedDir);
	ySpeed = environSpeedY + lengthdir_y(intendedSpeed,intendedDir);
}