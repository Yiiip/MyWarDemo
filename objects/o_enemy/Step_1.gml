if (hp <= 0) {
	with (o_skill_aiming) {
		//避免用子弹打死造成技能所引用的对象为空，所以在这里销毁
		if (skillAimingTargetId == other.id) instance_destroy();
	}
	
	instance_destroy();
	
	ScreenShake(10, 25);
	audio_play_sound(snd_ememy_dead, 0, 0);
	
	with (instance_create_layer(x, y, layer, o_enemy_dead)) {
		direction = other.hitFrom;
		speed_x = lengthdir_x(4, direction);
		speed_y = lengthdir_y(4, direction) - 3;
		if (sign(speed_x) != 0) image_xscale = sign(speed_x);
	}
}