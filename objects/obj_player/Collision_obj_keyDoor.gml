/// @description Collsions for key door

vspeed = 0;
if (obj_charStats.has_key){ //"Unlocks" door if player has key
	audio_play_sound(snd_doorUnlock,3,false);
	audio_play_sound(snd_doorOpen,2,false);
	instance_destroy(other);
	obj_charStats.has_key = false;
}