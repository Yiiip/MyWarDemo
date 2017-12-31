/// @description setup camera

cam = view_camera[0];

followTarget = o_player;

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

xOrigin = xstart;
yOrigin = ystart;

shake_length_time = 0; //屏幕震动发生间隔，默认60
shake_magnitude = 0; //屏幕震动程度大小，默认6
shake_remain = 0; //默认6
buff = 32;
