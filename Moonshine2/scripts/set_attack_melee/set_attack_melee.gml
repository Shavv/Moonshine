/// @description set_attack_melee(image,speed,dmgframe,dmgvalue)
/// @param image
/// @param speed
/// @param dmgframe
/// @param dmgvalue
if target=noone and agrotarget!=noone 
{
 target=agrotarget
}

if !instance_exists(target)
{
 if alarm[0]=-1 {alarm[0]=1}
}
 else
{
 if target=noone
 {
  if alarm[0]=-1 {alarm[0]=1}
 }
}




if !collision_circle(x,y,f_follow_distance+1,target,1,1)
{
 if alarm[0]=-1 {alarm[0]=1}
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
    attacked=true
    charge=false
   }
    else
   {
    alarm[0]=1
    attack=false
    charge=false
   }
  }
 }
 if imageindexrounded>=image_number-1 {image_index=0 attacked=false}
}
