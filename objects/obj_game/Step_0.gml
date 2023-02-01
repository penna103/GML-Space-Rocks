if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
			
		case rm_win:
		case rm_end:
			game_restart();
			break;
	}
}

if(room == rm_game){
	if(lives <= 0){
		if(score >= 2000){
			room_goto(rm_win);
			audio_play_sound(snd_win, 1, false);
		}
		else{
		room_goto(rm_end);
		audio_play_sound(snd_lose, 1, false);
		}
	}
}