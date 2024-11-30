/// @description Insert description here
// You can write your code in this editor



if (instance_place(x,y, obj_ladder)){
	if(keyboard_check(vk_up)){	
		climbing = true;
		vspeed = 0;
		gravity = 0;
		sprite_index = spr_player_climb
		image_speed = 1;
	}
	if (keyboard_check(vk_down)){
		climbing = true;
		vspeed = 0;
		gravity = 0;
		sprite_index = spr_player_climb
		image_speed = 1;
	}
}
else{
	climbing = false;
	sprite_index = spr_player_walk
}

if climbing{
	if(keyboard_check(vk_up)){
		y += -move_speed;
	}
	if(keyboard_check(vk_down)){
		y += move_speed;
	}
	if (instance_place(x,y+1,obj_block)){
		climbing = false;
	}
	gravity = 0;
}
else{
	if(keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)){
		x += -move_speed;
		sprite_index = spr_player_walk
		image_xscale = -1;
		image_speed = 1;
		
	}
	else if(keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)){
		x += move_speed;
		sprite_index = spr_player_walk
		image_xscale = 1;
		image_speed = 1;
	}
	else{
		sprite_index = spr_player
		image_speed = 0;
	}
	
	if(keyboard_check(vk_up)){
		if (instance_place(x, y + 1 ,obj_block)){
			vspeed = jump_height;	
		}
	}
	
	if(!instance_place(x,y + 1 ,obj_block)){
		gravity = .25;	
	}
	else{
		gravity = 0;	
	}
	
	if vspeed > 12{
		vspeed = min(vspeed, 12);	
	}
	
	
	//Collisons for non solid platforms 
	if (place_meeting(x+ move_speed, y, obj_nonSolBlock)){
		while (!place_meeting(x+sign(move_speed),y, obj_nonSolBlock)){
				x += sign(move_speed);
		}
	}
	
	if (place_meeting(x, y+ move_speed, obj_nonSolBlock) and !keyboard_check(vk_down)){
		while (!place_meeting(x,y+sign(move_speed), obj_nonSolBlock)){
				y += sign(move_speed);
		}
		gravity = 0;
	}
	
	
}


