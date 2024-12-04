/// @description Players hiding code

//If the player is not hiding they can press E to hide
if (obj_player.is_hidden == false and keyboard_check_pressed(ord(interact_key))){
	obj_player.is_hidden = true;
	obj_player.visible = false;
	obj_player.x = other.x;
	obj_player.y = other.y;
}

//If player is hidden they can press Q to unhide
if(obj_player.is_hidden == true and keyboard_check_pressed(ord(unhide_key))){
	obj_player.y = other.y - 15;
	obj_player.is_hidden = false;
	obj_player.visible = true;
	other.solid = false;
}
