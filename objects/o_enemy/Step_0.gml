//模拟重力
speed_y += grv;

//Horizontal Collision
//判断当前位置移动了1个速度距离时是否碰撞
if (place_meeting(x+speed_x, y, o_grass)) {
	//如果1个速度距离的地方检测到碰撞，则利用sign()返回-1或1慢慢移动，直到到达那个地方
	while (!place_meeting(x+sign(speed_x), y, o_grass)) {
		x += sign(speed_x);
	}   
	speed_x = -speed_x;
} else {
	x += speed_x;
}

//Vertical Collision
if (place_meeting(x, y+speed_y, o_grass)) {
	while (!place_meeting(x, y+sign(speed_y), o_grass)) {
		y += sign(speed_y);
	}
	speed_y = 0;
} else {
	y += speed_y;
}


if (speed_x == 0) {
	sprite_index = s_enemy_idle;
} else {
	sprite_index = s_enemy_running;
	image_xscale = sign(speed_x);
}


with (o_player) {
	var repulseDirFlag = sign(other.x - x); //击退方向
}
if (flash > 0) 
	&& (!place_meeting(x+repulseDirFlag*flash*2, y, o_grass)) 
	&& (!place_meeting(x, y-flash*2, o_grass))
{
	x += repulseDirFlag * flash*2;
	y -= flash*2;
	flash--;
	//show_debug_message("flash = " + string(flash));
} else {
	flash = 0;
}