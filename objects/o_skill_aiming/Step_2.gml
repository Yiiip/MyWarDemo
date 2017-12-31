lightingRange = 64;
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);

if (skillAimingTargetId != -1) {
	gpu_set_blendmode(bm_subtract);
	surface_set_target(global.surface_light);
	draw_ellipse_color(
		x - lightingRange/2 - _vx,
		y - lightingRange/2 - _vy,
		x + lightingRange/2 - _vx,
		y + lightingRange/2 - _vy,
		c_orange,
		c_black,
		false
	);
	surface_reset_target();
	gpu_set_blendmode(bm_normal);
}