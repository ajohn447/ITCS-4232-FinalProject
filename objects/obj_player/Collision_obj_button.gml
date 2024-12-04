/// @description Code for getting the button to open the button doors


vspeed = 0;
if(keyboard_check_pressed(ord(interact_key))){ //If player presses E
		if (other.door_buttonNum = obj_buttonDoor.door_buttonNum){ //The coresponding door will be destroyed
			instance_destroy(obj_buttonDoor);	
		}
		audio_play_sound(snd_buttonPress,2,false);
		other.sprite_index = spr_button_pressed; //And the button will show that it has been pressed.
}