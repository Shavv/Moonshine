//Below is particle code:
var Sname,particle1,emitter1;
Sname = part_system_create();

//paste this in every particle
part_system_depth(Sname,argument0)


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.10,0.37,0,0);
part_type_scale(particle1,1.2,1.2);
part_type_color3(particle1,14599802,14652463,c_lime);
part_type_alpha3(particle1,0.54,0.62,0.02);
part_type_speed(particle1,0.1,3.71,-0.18,0);
part_type_direction(particle1,0,359,-1,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,0);
part_type_blend(particle1,1);
part_type_life(particle1,55,90);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,5);