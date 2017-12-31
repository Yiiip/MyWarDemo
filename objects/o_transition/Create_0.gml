/// @description Size varuables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;

enum TRANS_MODE {
	OFF,		//0
	NEXT,		//1
	GOTO,		//2
	RESTART, //3
	INTRO		//4
}

mode = TRANS_MODE.INTRO
percent = 1; //控制转场动画
targetRoom = room;

show_debug_message("transition mode = "+string(mode));