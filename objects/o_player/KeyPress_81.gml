var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);

if (o_skillCDTimer.skillAimingTimer <= 0) {
	with(o_enemy) {
		if (x >= _vx && x <= _vx+_vw && y >= _vy && y <= _vy+_vh) {
			var targetId = id;
			with (instance_create_layer(x, y, "weapon", o_skill_aiming)) {
				skillAimingTargetId = targetId;
				//show_debug_message(string(targetId));
			}
		}
	}
	o_skillCDTimer.skillAimingTimer = 5 * 60;
}
