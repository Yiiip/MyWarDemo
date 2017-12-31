if (skillAimingTargetId != -1) {
	skillAimingTargetId.hp -= skillAimingDamage;
	
	//血腥效果
	repeat (25) instance_create_layer(x, y, "enemy", o_blood);
	
	//浮出数字效果 -HP
	var floatPointsID = instance_create_layer(x+random_range(-10,10), y+random_range(-10,10), "enemy", o_floatPoints);
	floatPointsID.value = -skillAimingDamage;
}

instance_destroy();
