/// @description Collisons for picking up key
audio_play_sound(snd_keyPickup,2,false);
obj_charStats.has_key = true;
instance_destroy(other);