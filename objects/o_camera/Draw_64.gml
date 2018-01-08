//Show FPS
draw_set_color($1212FF);
draw_set_font(font_pixel);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(camera_get_view_width(cam) - 14, 14, "FPS: " + string(fps));

//Mouse Sprite
cursor_sprite = s_mouse;

//Show Skill CD time
if (room != 0) {
	var skillAimingSEC = o_skillCDTimer.skillAimingTimer / 60;
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	if (skillAimingSEC == 0) {
		draw_set_color(c_yellow);
		draw_text(14, 14, "'Q' READY!");
	} else {
		draw_set_color(c_white);
		draw_text(14, 14, "'Q' CD: " + string(skillAimingSEC) + "s");
	}
}