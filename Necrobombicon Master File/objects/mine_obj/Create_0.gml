/// @description Insert description here
// You can write your code in this editor
event_inherited();

timer = 0;
maxSpeed = 12;

healthMax = 3;
healthCurrent = healthMax;
damage = 4;

canMove = true;

// sprite array stuff
spriteArray[anim.move, dir.north] = mine_walk_up_spr;
spriteArray[anim.move, dir.northeast] = mine_walk_up_spr;
spriteArray[anim.move, dir.northwest] = mine_walk_up_spr;
spriteArray[anim.move, dir.south] = mine_walk_front_spr;
spriteArray[anim.move, dir.southeast] = mine_walk_front_spr;
spriteArray[anim.move, dir.southwest] = mine_walk_front_spr;
spriteArray[anim.move, dir.east] = mine_walk_right_spr;
spriteArray[anim.move, dir.west] = mine_walk_left_spr;

spriteArray[anim.hurt, 0] = mine_walk_front_spr;;

// sets the object mask to the same as the down idle (don't have to edit other collision masks anymore)
mask_index = spriteArray[anim.move, dir.south];