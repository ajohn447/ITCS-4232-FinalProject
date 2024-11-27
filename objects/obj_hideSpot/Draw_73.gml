/// @description Insert description here
// You can write your code in this editor


//Let player know how to interact properly with this object (E to hide, Q to unhide)
if(obj_enemy.x <= bbox_left -15 || obj_enemy.x >= bbox_right + 15){
	if (obj_player.x >= bbox_left - 32 && obj_player.x <= bbox_right + 32 ){
		if (obj_player.bbox_bottom <= bbox_bottom && obj_player.bbox_bottom >= bbox_top - 32 ){
			if obj_player.is_hidden == false{
				draw_text_transformed(x,bbox_top-16, "Press E to Hide",.5,.5,0);
			}
	
		
		}
	}
	
}


if (obj_player.x == x && obj_player.y == y && obj_player.is_hidden){
	draw_text_transformed(x,bbox_top-16, "Press Q to UnHide",.5,.5,0);
}