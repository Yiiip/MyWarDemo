/// @desc TransitionSlide(mode, targetRoom)
/// @arg Mode: sets transition mode between next, restart and goto.
/// @arg Target: sets target room when using the goto mode.

with (o_transition) {
	mode = argument[0];
	if (argument_count > 1) {
		targetRoom = argument[1];
	}
}