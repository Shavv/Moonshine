/// @description effect_particle_timer(x,y,particle_script,timer,depth)
/// @param x
/// @param y
/// @param particle_script
/// @param timer
/// @param depth

var i,xx,yy,script;

i=instance_create(argument0,argument1,PARTICLE)
i.script=argument2
i.alarm[0]=argument3
i.depth=argument4