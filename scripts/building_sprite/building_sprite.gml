/// @description building_sprite()
if hp!=f_mhp
{
 image_speed=0
 if sprite_index!=sprite_damaged {sprite_index=sprite_damaged}
 if hp>0 {image_index=(10/f_mhp*hp)} else {image_index=0}


 if hp<=0
 {
  state=99
  image_speed=0
  image_index=0
  if alarm[11]=-1
  {
   select(false)
   //create corpse
   v=instance_create(x,y,RUIN)
   v.sprite_index=sprite_index
   v.image_index=0
   v.image_xscale=image_xscale
   v.image_yscale=image_yscale   
   v.mask_index=sprite_damaged
   alarm[11]=10
  }
 }
}
 else
{
 image_speed=sprite_speed
 if sprite_index!=sprite {sprite_index=sprite}
}

