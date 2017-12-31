draw_self();

if (flash > 0) {
	shader_set(shader_hit_enemy);
	draw_self();
	shader_reset();
}