ptSys = part_system_create();

particle_gun_firing = part_type_create();
part_type_shape(particle_gun_firing,pt_shape_star);
part_type_size(particle_gun_firing,0.08,0.08,0,0);
part_type_scale(particle_gun_firing,1,1);
part_type_color1(particle_gun_firing,8454143);
part_type_alpha1(particle_gun_firing,1);
part_type_speed(particle_gun_firing,2,3,0,0);
part_type_direction(particle_gun_firing,0,359,0,0);
part_type_gravity(particle_gun_firing,0,270);
part_type_orientation(particle_gun_firing,0,0,0,0,1);
part_type_blend(particle_gun_firing,1);
part_type_life(particle_gun_firing,5,16);

part_particles_create(ptSys, x, y, particle_gun_firing, 6);