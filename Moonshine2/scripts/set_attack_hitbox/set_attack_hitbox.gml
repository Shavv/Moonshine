/// @description set_attack_hitbox(image,speed,dmgframe,dmgvalue,instance,xinstance,yinstance)
/// @param image
/// @param speed
/// @param dmgframe
/// @param dmgvalue
/// @param instance
/// @param xinstance
/// @param yinstance
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
    j=instance_create(argument5,argument6,argument4)
    j.dmg=argument3
    j.team=team
	j.master=id
    
    alarm[0]=f_attack_cooldown
    attacked=true
    charge=false
    walk=true   
    with (target) {instance_destroy()} 
   }
    else
   {
    alarm[0]=5
    attacked=true
    charge=false
    walk=true     
   }
  }
  if imageindexrounded>=image_number-1 {image_index=image_number-1 image_speed=0 attacked=false}
 }
}
