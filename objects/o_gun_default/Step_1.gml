x = o_player.x;
y = o_player.y + 5;

image_angle = point_direction(x, y, mouse_x, mouse_y);

if (image_angle > 90) && (image_angle < 270) {
	image_yscale = -1;
} else {
	image_yscale = 1;
}
//o_player.image_xscale = image_yscale;

firingDelay -= 1; //开火延迟参数
bulletCasingsDelay += 1;

/*按下鼠标左键*/
if (mouse_check_button(mb_left)) && (firingDelay < 0) && (o_player.enableControl) {
	if (gunBulletType != 0) gunBulletType = 0;
	recoil = 5;
	firingDelay = 5;
	//生成子弹
	with (instance_create_layer(x, y, "bullets", o_bullet_default)) {
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
	//生成子弹壳
	if (bulletCasingsDelay >= 6) {
		with (instance_create_layer(x, y, "bullets", o_bullet_casings)) {
			direction = 90 + (other.image_yscale * 40);
		}
		bulletCasingsDelay = 0;
	}
	//播放音效
	audio_sound_pitch(snd_gun_firing, random_range(0.8, 1.2)); //随机声音大小
	audio_play_sound(snd_gun_firing, 0, 0);
	//创建粒子效果
	instance_create_layer(x+lengthdir_x(sprite_width/2, image_angle), y+lengthdir_y(sprite_width/2, image_angle), "weapon", o_gun_firing_particle);
	//屏幕震动效果
	ScreenShake(2, 10);
} else {
	//销毁粒子
	instance_destroy(o_gun_firing_particle);
}

/*按下鼠标右键*/
if (mouse_check_button(mb_right)) && (firingDelay < 0) && (o_player.enableControl) {
	if (gunBulletType != 1) gunBulletType = 1;
	recoil = 15;
	firingDelay = 12;
	for (var i = -1; i <= 1; i ++) { //散弹效果
		with (instance_create_layer(x, y, "bullets", o_bullet_default)) {
			speed = 30;
			direction = other.image_angle + (i*8) + random_range(-2, 2);
			image_angle = direction;
		}
	}
	if (bulletCasingsDelay >= 13) {
		for (var j = -1; j <= 1; j++) {
			with (instance_create_layer(x, y, "bullets", o_bullet_casings)) {
				direction = 90 + (other.image_yscale * (50 + j * 10));
			}
		}
		bulletCasingsDelay = 0;
	}
	audio_sound_pitch(snd_gun_firing, random_range(1.0, 1.4));
	audio_play_sound(snd_gun_firing, 0, 0);
	instance_create_layer(x+lengthdir_x(sprite_width/2, image_angle), y+lengthdir_y(sprite_width/2, image_angle), "weapon", o_gun_firing_particle);
	ScreenShake(10, 10);
}

recoil = max(0, recoil-1); //武器后坐力参数，防止其小于0
x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);