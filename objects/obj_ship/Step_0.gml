if(keyboard_check(vk_left)){
	motion_add(180, 0.04)
	image_angle = 180
}

if(keyboard_check(vk_right)){
	motion_add(0, 0.04)
	image_angle = 0
}

if(keyboard_check(vk_up)){
	motion_add(90, 0.04)
	image_angle = 90
		if(keyboard_check(vk_right)){
		image_angle = 45	
	}
		if(keyboard_check(vk_left)){
		image_angle = 135	
	}
}

if(keyboard_check(vk_down)){
	motion_add(270, 0.04)	
	image_angle = 270
		if(keyboard_check(vk_right)){
		image_angle = 315	
	}
		if(keyboard_check(vk_left)){
		image_angle = 225
	}
}

if(speed > 0){
	speed = speed - 0.005	
}

if(keyboard_check_pressed(vk_lshift)){
alarm [0] = 1
}

move_wrap(true,true,sprite_width/2);