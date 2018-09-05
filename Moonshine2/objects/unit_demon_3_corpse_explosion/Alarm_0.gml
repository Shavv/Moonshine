/// @description destroy
if instance_exists(UNIT)
{
 with (UNIT)
 {
  var inst;
  inst=instance_position(x,y,other.id)
  if inst!=noone
  {
   if inst.team!=team
   {
	if state!=99 {dmg_done(id,inst.dmg)}
   }
    else
   {
	if state!=99 {healing_done(id,inst.dmg/2)}   
   }
  }
 }
}


//effect_particle_timer(x,y,particle_burst_explosion_3,10,-10000)
instance_destroy()

