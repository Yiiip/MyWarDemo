if (done == 0) {
	//模拟重力
	speed_y += grv;

	//Horizontal Collision
	if (place_meeting(x+speed_x, y, o_grass)) {
		while (!place_meeting(x+sign(speed_x), y, o_grass)) {
			x += sign(speed_x);
		}   
		speed_x = 0;
	} else {
		x += speed_x;
	}

	//Vertical Collision
	if (place_meeting(x, y+speed_y, o_grass)) {
		if (speed_y > 0) {
			done = 1;
			image_index = 1;
		}
		while (!place_meeting(x, y+sign(speed_y), o_grass)) {
			y += sign(speed_y);
		}
		speed_y = 0;
	} else {
		y += speed_y;
	}
}