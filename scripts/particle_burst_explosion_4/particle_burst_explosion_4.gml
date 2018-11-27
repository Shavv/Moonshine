//Below is particle code:
var Sname,particle1,emitter1;
Sname = part_system_create();

//paste this in every particle
part_system_depth(Sname,argument0)


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.10,0.14,0,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,16777215,14785636,16776960);
part_type_alpha3(particle1,0.61,0.68,0.02);
part_type_speed(particle1,3.58,3.80,-0.16,0);
part_type_direction(particle1,0,359,-1,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,0);
part_type_blend(particle1,1);
part_type_life(particle1,49,53);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,5);


