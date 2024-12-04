/// @description Just the sound code for robot steps
if (distance_to_object(obj_player) < 120){
	if(!audio_is_playing(snd_enemyFootstep)){
			audio_play_sound(snd_enemyFootstep, 1, false, 1.5);	
			audio_sound_gain(snd_enemyFootstep,.1,0);
		}	
}