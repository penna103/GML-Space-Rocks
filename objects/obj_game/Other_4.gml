if(room == rm_game){
	
	if(audio_is_playing(msc_song)){
		audio_play_sound(snd_zap, 1, false);	
	} else {
		audio_play_sound(msc_song, 2, true);
	}	

	var xx = choose(
		irandom_range(0, room_width*0.3),
		irandom_range(room_width*0.7, room_width)
	);
	var yy = choose(
		irandom_range(0, room_height*0.3),
		irandom_range(room_height*0.7, room_height)
	);
	instance_create_layer(xx, yy, "Instances", obj_asteroid);
	
	alarm[0] = 60;
	alarm[3] = room_speed * 40;
}

if(room == rm_win){
	alarm [2] = 1
}