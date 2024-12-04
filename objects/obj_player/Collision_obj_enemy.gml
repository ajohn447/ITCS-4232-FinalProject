
//Enemey colissons
if (!is_hidden){ //If player is not hidden they can "die"
	if (obj_charStats.attempts_left > 1){ //IF they still have lives left, respawn
		obj_charStats.attempts_left -= 1;
		room_goto(rm_startRoom);
		x = original_X;
		y = original_y;
	}
	else{ //No lives left? Loss
			obj_charStats.attempts_left -= 1;
			obj_charStats.loss = true;
			room_goto(rm_WinOrLoss);
	}
}