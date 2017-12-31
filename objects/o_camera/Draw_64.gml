//Show FPS
draw_set_color($1212FF);
draw_set_font(font_pixel);
draw_text(camera_get_view_width(cam) - 100, 32, "FPS: " + string(fps));

//Mouse Sprite
cursor_sprite = s_mouse;

//Show Skill CD time
var skillAimingSEC = o_skillCDTimer.skillAimingTimer / 60;
if (skillAimingSEC == 0) {
	draw_set_color(c_yellow);
	draw_text(32, 32, "'Q' READY!");
} else {
	draw_set_color(c_white);
	draw_text(32, 32, "'Q' CD: " + string(skillAimingSEC) + "s");
}