//模拟重力
speed_y += grv;

if (place_meeting(x, y+speed_y, o_grass)) {
	while (!place_meeting(x, y+sign(speed_y), o_grass)) {
		y += sign(speed_y);
	}
	speed_y = 0;
	speed = 0;
	x += random_range(-2, 2);
	image_angle += random(2);
} else {
	y += speed_y;
	image_angle += random(10);
}

destoryTimer--;
if (destoryTimer <= 0) instance_destroy();