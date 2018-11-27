/// @description set_image_die_stop(image,speed)
/// @param image
/// @param speed
state=99
spritestate="die"

if  image_ignore!=argument0
{
 var imageindexrounded = floor(image_index)
 end_animation=true
 /////////////////////////////
 if sprite_index!=argument0
 {
  image_speed=argument1
  sprite_index=argument0
  image_index=0
 }
  else
 {
  if imageindexrounded>=image_number-1
  {
   image_speed=0
   image_index=image_number-1       
   
   if alarm[11]=-1
   {
    select(false)
	    //create corpse
    v=instance_create(x,y,CORPSE)
    v.sprite_index=sprite_index
    v.image_index=image_number-1 
    v.image_xscale=image_xscale
    v.image_yscale=image_yscale   
    v.mask_index=asset_get_index(sprite_die)
	v.xpstored=level*5
    alarm[11]=10
   }
  }
 }
}
