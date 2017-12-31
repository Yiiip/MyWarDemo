draw_self();
draw_healthbar(
	x-20, y-45, x+20, y-40, 
	(player_hp / player_hp_max) * 100,
	c_black, c_red, c_green, 0,
	true, false);