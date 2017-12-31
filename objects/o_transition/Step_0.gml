/// @description Progress the transation

if (mode != TRANS_MODE.OFF) {
	if (mode == TRANS_MODE.INTRO) {
		percent = max(0, percent - max(percent/10, 0.005)); //两个max()起到变速的作用
	} else {
		percent = min(1.1, percent+max((1.1-percent)/10, 0.005));
		//如果最大设为1.0，则由于速度太快导致中间黑色的部分过快打开，让人感觉黑幕没闭住，效果不佳
	}
	
	if (percent == 1.1) || (percent == 0) {
		switch (mode) {
			case TRANS_MODE.INTRO:
				mode = TRANS_MODE.OFF;
				show_debug_message("transition mode to OFF");
				break;
				
			case TRANS_MODE.NEXT:
				mode = TRANS_MODE.INTRO;
				show_debug_message("transition mode to INTRO");
				room_goto_next();
				break;
				
			case TRANS_MODE.GOTO:
				mode = TRANS_MODE.INTRO;
				show_debug_message("transition mode to INTRO");
				room_goto(targetRoom);
				break;
				
			case TRANS_MODE.RESTART:
				game_restart();
				break;
		}
	}
}
