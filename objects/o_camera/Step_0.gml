/// @description update camera

//Update destination
if (instance_exists(followTarget)) {
	xOrigin = followTarget.x;
	yOrigin = followTarget.y;
}

//Update object position
x += (xOrigin - x) / 25; //使用除法，可使镜头缓动，由快到慢
y += (yOrigin - y) / 25;

x = clamp(x, 0 + view_w_half + buff, room_width - view_w_half*2 + view_w_half - buff); //得到固定范围内的值，即防止镜头超出场景渲染
y = clamp(y, 0 + view_h_half+ buff, room_height - view_h_half*2 + view_h_half - buff);

//Screen shake effect（如果边界有Tile，震动时会露出room的外界部分，所以要么避免震动，要么camera远离边缘1个tile距离，即加减buff）
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - (1/shake_length_time) * shake_magnitude);

//Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half); //camera的左上角要向左上偏移，可使目标显示到中心

//Moving parallax background effect
if (layer_exists("Backgrounds_trees")) {
	layer_x("Backgrounds_trees", x/4);
}
if (layer_exists("Backgrounds_mountains")) {
	layer_x("Backgrounds_mountains", x/2); //这里如果是x/n n越大越无视差
}
if (layer_exists("Backgrounds_stars_close")) {
	layer_x("Backgrounds_stars_close", x/1.4);
}
if (layer_exists("Backgrounds_stars_far")) {
	layer_x("Backgrounds_stars_far", x/1.5);
}
