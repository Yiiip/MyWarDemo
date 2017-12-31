if (enableControl) {
	key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_space);
} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

//var是每一帧的临时变量
var moveDir = key_right - key_left;
player_speed_x = moveDir * player_walk_speed;

//模拟重力
player_speed_y += grv;

//Horizontal Collision
//判断当前位置移动了1个速度距离时是否碰撞
if (place_meeting(x+player_speed_x, y, o_grass)) {
	//如果1个速度距离的地方检测到碰撞，则利用sign()返回-1或1慢慢移动，直到到达那个地方
	while (!place_meeting(x+sign(player_speed_x), y, o_grass)) {
		x += sign(player_speed_x);
	}   
	player_speed_x = 0;
} else {
	x += player_speed_x;
}

//Vertical Collision
if (place_meeting(x, y+player_speed_y, o_grass)) {
	while (!place_meeting(x, y+sign(player_speed_y), o_grass)) {
		y += sign(player_speed_y);
	}
	player_speed_y = 0;
} else {
	y += player_speed_y;
}

//Deal with jump
if (place_meeting(x, y+2, o_grass) && key_jump) {
	player_speed_y = -7;
}

//Animation
if (!place_meeting(x, y+1, o_grass)) {
	sprite_index = s_player_jumping;
	image_speed = 0; //1对应Sprite窗口中的Speed=15，2为30，以此类推
	if (sign(player_speed_y) > 0)	{
		image_index = 0; //玩家跳跃下降时
	} else {
		image_index = 0; //玩家跳跃上升时
	}
} else {
	image_speed = 1;
	if (player_speed_x == 0) {
		sprite_index = s_player_idle;
	} else {
		sprite_index = s_player_running;
	}
}

//控制玩家转向
if (player_speed_x != 0) image_xscale = sign(player_speed_x);
else image_xscale = o_gun_default.image_yscale;