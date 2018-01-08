//Show FPS
draw_set_color($1212FF);
draw_set_font(font_pixel);
draw_text(camera_get_view_width(cam) - 14, 36, "FPS: " + string(fps));

//Mouse Sprite
cursor_sprite = s_mouse;

//Show Skill CD time
if (room != 0) {
	var skillAimingSEC = o_skillCDTimer.skillAimingTimer / 60;
	if (skillAimingSEC == 0) {
		draw_set_color(c_yellow);
		draw_text(0, 36, "'Q' READY!");
	} else {
		draw_set_color(c_white);
		draw_text(0, 36, "'Q' CD: " + string(skillAimingSEC) + "s");
	}
}