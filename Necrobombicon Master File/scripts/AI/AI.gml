randQuantcol = irandom_range(1,8);

//if(randQuat == randQuantcol){
//intendedDir=point_direction(x,y,player.x,player.y);
//}
if(timer == 50){
intendedSpeed = 0;
}
if(timer == 100){
intendedDir = irandom_range(0,359);
intendedSpeed = 4;
timer = 0;
}
else{
timer++;
}


