lightingRange = 70;
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);

gpu_set_blendmode(bm_subtract);
surface_set_target(global.surface_light);
draw_ellipse_color(
	x - lightingRange/2 - _vx + random_range(-6, 6),
	y - lightingRange/2 - _vy + random_range(-6, 6),
	x + lightingRange/2 - _vx + random_range(-6, 6),
	y + lightingRange/2 - _vy + random_range(-6, 6),
	$00A000,
	c_black,
	false
);
surface_reset_target();
gpu_set_blendmode(bm_normal);