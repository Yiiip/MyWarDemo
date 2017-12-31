ptSys = part_system_create();

p = part_type_create();
part_type_shape(p,pt_shape_spark);
part_type_size(p,0.04,0.09,0,0);
part_type_scale(p,1,1);
part_type_color1(p,$B4FF9B);
part_type_alpha1(p,1);
part_type_speed(p,1,3,0,0);
part_type_direction(p,0,359,0,0);
part_type_gravity(p,0.09,270);
part_type_orientation(p,0,0,0,0,1);
part_type_blend(p,1);
part_type_life(p,20,40);

part_particles_create(ptSys, x, y, p, 1);