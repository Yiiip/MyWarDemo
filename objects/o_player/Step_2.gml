lightingRange = 300;
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);

gpu_set_blendmode(bm_subtract);
surface_set_target(global.surface_light);
//以下绘制自带渐变效果
/*draw_ellipse_color(
	x - lightingRange/2 - _vx + random_range(-6, 6),
	y - lightingRange/2 - _vy + random_range(-6, 6),
	x + lightingRange/2 - _vx + random_range(-6, 6),
	y + lightingRange/2 - _vy + random_range(-6, 6),
	c_white,
	c_black,
	false
);*/

//以下两个绘制都是像素效果，手动模仿渐变颜色
draw_set_color(c_dkgray);
draw_set_alpha(0.3);
draw_circle(
	x - _vx + random_range(-2, 2),
	y - _vy + random_range(-2, 2),
	150 + random_range(-2, 2),
	false
);

draw_set_color(c_white);
draw_set_alpha(0.8);
draw_circle(
	x - _vx + random_range(-2, 2),
	y - _vy + random_range(-2, 2),
	90 + random_range(-2, 2),
	false
);

surface_reset_target();
gpu_set_blendmode(bm_normal);
draw_set_alpha(1.0);