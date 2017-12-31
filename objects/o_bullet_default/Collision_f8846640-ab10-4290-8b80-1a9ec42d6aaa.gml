with (other) {
	hp -= other.bulletDamage;
	flash = 3;
	hitFrom = other.direction;
	
	//浮出数字效果 -HP
	floatPointsID = instance_create_layer(x+random_range(-10,10), y+random_range(-10,10), "enemy", o_floatPoints);
	floatPointsID.value = other.bulletDamage *(-1);
}

//血腥效果
repeat (15) instance_create_layer(x, y, "enemy", o_blood);

//子弹销毁
instance_destroy();