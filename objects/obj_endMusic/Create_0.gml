/// @description Insert description here
// You can write your code in this editor
if (obj_charStats.attempts_left > 0){
	audio_play_sound(snd_win,1,false);  //Win
}
else{
	audio_play_sound(snd_loss,1,false);   //Loss
}