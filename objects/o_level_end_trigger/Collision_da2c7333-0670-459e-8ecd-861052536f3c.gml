/// @desc Go to next room.

with (o_player) {
	if (enableControl) {
		enableControl = false;
		TransitionSlide(TRANS_MODE.GOTO, room_level01);
	}
}