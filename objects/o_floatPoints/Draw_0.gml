draw_set_halign(fa_center); //绘制时使文字的中间在(x, y)处
draw_set_alpha(alpha);
draw_set_color(c_black);
draw_text_transformed(x-2, y-2, string(value), scale, scale, 0); //阴影效果
draw_set_color(c_red);
draw_text_transformed(x, y, string(value), scale, scale, 0);

//Reset for game system
draw_set_alpha(1.0);
draw_set_halign(fa_left);