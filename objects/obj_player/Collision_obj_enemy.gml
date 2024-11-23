/// @description Insert description here
// You can write your code in this editor
if (!is_hidden){
	if (obj_charStats.attempts_left > 1){
		obj_charStats.attempts_left -= 1;
		room_goto(rm_startRoom);
		x = original_X;
		y = original_y;
	}
	else{
			instance_destroy();
	}
}