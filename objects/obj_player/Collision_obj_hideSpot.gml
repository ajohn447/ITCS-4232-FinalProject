/// @description Insert description here
// You can write your code in this editor

if (obj_player.is_hidden == false and keyboard_check_pressed(ord(interact_key))){
	obj_player.is_hidden = true;
	obj_player.visible = false;
	obj_player.x = other.x;
	obj_player.y = other.y;
}


if(obj_player.is_hidden == true and keyboard_check_pressed(ord(unhide_key))){
	obj_player.y = other.y - 5;
	obj_player.is_hidden = false;
	obj_player.visible = true;
	other.solid = false;
}
