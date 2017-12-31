gpu_set_blendmode(bm_subtract);
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
draw_surface(global.surface_light, _vx, _vy);
gpu_set_blendmode(bm_normal);