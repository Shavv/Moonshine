/// @description dmg_done(instance,dmgvalue)
/// @param instance
/// @param dmgvalue
if instance_exists(argument0)
{
 if argument0.object_index!=CORPSE
 {
  var inst,insthp,dmgdealth;
 
  inst=argument0
  dmgdealth=argument1
  insthp=inst.hp
 
  insthp-=dmgdealth
  
  inst.hp=insthp
  inst.flash=true
  
  if inst.state!=0.9
  {
   if inst.hp<=0
   {
    if object_is_ancestor(object_index,UNIT)
    {
     xp+=inst.level*5  
    }
     else
    {
 	with (master) {xp+=inst.level*5}   
    }
   }
  }  
 }
}
