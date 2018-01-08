/// @description Draw Menu

draw_set_font(font_pixel);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menuItems; i++) {
    var offset = 2;
	var text = menu[i];
	var col;
	var fontScale = 1;
	if (menuCursor == i) {
		text = string_insert("+ ", text, 0);
		col = c_white;
		fontScale = 2;
	} else {
		col = c_gray;
		fontScale = 1.8;
	}
	
	var xx = menuX;
	var yy = menuY - (menuItemHeight * (i*3));
	//text shadow
	draw_set_color(c_black);
	draw_text_transformed(xx - offset, yy, text, fontScale, fontScale, 0);
	draw_text_transformed(xx + offset, yy, text, fontScale, fontScale, 0);
	draw_text_transformed(xx, yy - offset, text, fontScale, fontScale, 0);
	draw_text_transformed(xx, yy + offset, text, fontScale, fontScale, 0);
	draw_set_color(col);
	draw_text_transformed(xx, yy, text, fontScale, fontScale, 0);
}