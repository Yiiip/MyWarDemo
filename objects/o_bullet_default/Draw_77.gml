if (place_meeting(x, y, o_grass)) instance_destroy();

with (o_gun_default) {
	if (gunBulletType == 1) {
		/*show_debug_message(string(abs(other.x - other.xOrigin)));
		show_debug_message(lengthdir_x(other.bulletRange, image_angle));
		if ((other.x - other.xOrigin) >= lengthdir_x(other.bulletRange, image_angle)) {
			instance_destroy(other);
		}*/
	}
}