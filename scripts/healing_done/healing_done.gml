/// @description dmg_done(instance,dmgvalue)
/// @param instance
/// @param dmgvalue
if instance_exists(argument0)
{
 var inst,insthp,healingdone;
 
 inst=argument0
 healingdone=argument1
 insthp=inst.hp
 
 insthp+=healingdone
 
 inst.hp=insthp
 //inst.flash=true
 //instance_create(x,y-sprite_height,FX_healingdone)
 effect_create_above(ef_flare,argument0.x,argument0.y-argument0.sprite_height/2,0,c_lime)
}
