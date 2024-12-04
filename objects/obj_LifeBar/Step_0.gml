/// @description Insert description here
// You can write your code in this editor


//Based on how many lives the player has left the health bar will adjust 
	//Even though the player only has 3 lives there are enough images allowing for up to 5 lives if this needed to be changed
if(obj_charStats.attempts_left == 4){ 
	image_index = 1;	
}

if(obj_charStats.attempts_left == 3){
	image_index = 2;	
}

if(obj_charStats.attempts_left == 2){
	image_index = 3;	
}

if(obj_charStats.attempts_left == 1){
	image_index = 4;	
}

if(obj_charStats.attempts_left == 0){
	image_index = 5;	
}