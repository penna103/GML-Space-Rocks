lives = lives - 1;

with obj_game{
	alarm[1] = 60;
}

audio_play_sound(snd_die, 1, false);

instance_destroy()

repeat(30){
	instance_create_layer(x,y,"Instances",obj_debris)	
}