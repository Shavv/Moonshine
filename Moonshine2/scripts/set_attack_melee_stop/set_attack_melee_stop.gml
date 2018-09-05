/// @description set_attack_melee_stop(image,speed,dmgframe,dmgvalue)
/// @param image
/// @param speed
/// @param dmgframe
/// @param dmgvalue
if target=noone and agrotarget!=noone 
{
 target=agrotarget
}


if  image_ignore!=argument0
{
 var imageindexrounded = floor(image_index)
 end_animation=true
 /////////////////////////////
 if sprite_index!=argument0
 {
  spritestate="attack"
  image_speed=argument1
  sprite_index=argument0
  image_index=0
  charge=true
 }
  else
 {
  if imageindexrounded=argument2 and attacked=false
  {
   if instance_exists(target)
   {
    dmg_done(target,argument3)
    alarm[0]=f_attack_cooldown
    attacked=true
    charge=false
   }
    else
   {
    alarm[0]=1
    attacked=true
    charge=false
   }
  }
  if imageindexrounded>=image_number-1 {image_index=image_number-1 image_speed=0 attacked=false}
 }
}
