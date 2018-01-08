/// @description Control Menu

//Anim ease in
menuX += (menuXAnimTarget - menuX) / menuSpeed;

//Keyboard controls
if (menuControl) {
	if (keyboard_check_pressed(vk_up)) {
		menuCursor++;
		if (menuCursor >= menuItems) menuCursor = 0;
		audio_sound_pitch(snd_gun_firing, random_range(0.8, 1.2)); //随机声音大小
		audio_play_sound(snd_menu_hover, 0, 0);
	}
	if (keyboard_check_pressed(vk_down)) {
		menuCursor--;
		if (menuCursor < 0) menuCursor = menuItems - 1;
		audio_sound_pitch(snd_gun_firing, random_range(0.8, 1.2)); //随机声音大小
		audio_play_sound(snd_menu_hover, 0, 0);
	}
	
	if (keyboard_check_pressed(vk_enter)) {
		menuXAnimTarget = guiWidth + 300;
		menuCommitted = menuCursor;
		ScreenShake(30, 30);
		menuControl = false;
	}
}

if (menuX > guiWidth + 200) && (menuCommitted != -1) {
	switch (menuCommitted) {
	    case 2:
	        TransitionSlide(TRANS_MODE.NEXT);
	        break;
		case 1:
	        //TODO
	        break;
		case 0:
	        game_end();
	        break;
	    default:
			TransitionSlide(TRANS_MODE.RESTART);
	        break;
	}
}