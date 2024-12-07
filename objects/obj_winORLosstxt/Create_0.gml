/// @description Display text depending on if player has won or lost
// You can write your code in this editor

if (obj_charStats.attempts_left > 0){
	text = "Nightmare Escaped";  //Win
	
}
else{
	text = "Trapped in the Nightmare. \nForever";   //Loss
	instance_create_layer(0,0,"Instances",obj_endMusic);
}

alarm[0] = 240;