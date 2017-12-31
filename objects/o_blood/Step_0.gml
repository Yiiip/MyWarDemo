/// Set Direction
image_angle = direction;
image_alpha = alpha;

//if collide with solid
if (place_meeting(x, y, o_grass)) {
	visible = false;
	if (speed > 0) {
		speed -= slowDown;
		alpha -= 0.02;
	}
	
	//Draw to surface
	if (!surface_exists(global.surface_blood)) {
		global.surface_blood = surface_create(room_width, room_height);
	} else {
		surface_set_target(global.surface_blood);
		draw_sprite_ext(s_blood, 0, x, y, image_xscale, image_yscale, image_angle, c_white, alpha);
		alpha -= 0.02;
		surface_reset_target();
	}
} else {
	visible = true;
}

if (alpha <= 0) {
	instance_destroy();
}