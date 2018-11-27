/// @description move towards point
if alarm[0]=-1 {alarm[0]=100 image_xscale=master.image_xscale}
depth=-(y+5)

//effect_create_below(ef_flare,x,y,0,c_orange)

if target!=undefined
{
 if instance_exists(target)
 {
  move_towards_point(target.x,target.y,3)  
  
  if collision_circle(x,y,10,target,0,1)
  {
   speed=0
   dmg_done(target,dmg)
   instance_destroy()
  }
 }
  else
 {
  instance_destroy()
 }
}
 else
{
 instance_destroy() 
}


