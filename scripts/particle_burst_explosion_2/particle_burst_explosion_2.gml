//Below is particle code:
var Sname,particle1,emitter1;
Sname = part_system_create();

//paste this in every particle
part_system_depth(Sname,argument0)

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_smoke);
part_type_size(particle1,0.10,0.43,-0.12,0);
part_type_scale(particle1,3.71,3.06);
part_type_color3(particle1,16235496,4280416,9931828);
part_type_alpha3(particle1,0.67,0.70,0.02);
part_type_speed(particle1,3.23,4.89,-0.19,2);
part_type_direction(particle1,0,359,-1,7);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,73,228,0.40,9,0);
part_type_blend(particle1,1);
part_type_life(particle1,59,84);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,5);