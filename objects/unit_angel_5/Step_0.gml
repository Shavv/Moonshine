/// @description inherit event
event_inherited()

///sprite
if state=0 and attack=false
{
 if spritestate="idle"   {set_image_step(asset_get_index(sprite_idle),0.2)}
 if spritestate="move"   {set_image_step(asset_get_index(sprite_move),0.2)}
 if spritestate="die"    {set_image_step(asset_get_index(sprite_die),0.2)}
 //if spritestate="attack" {set_image_step(asset_get_index(sprite_attack),0.2)}
}

//die
if hp<=0                 {set_image_die_stop(asset_get_index(sprite_die),0.2)}


///attack when close
inst=instance_find_enemy(SELECTABLE)
////////////////////////////////////
 
if ai=0 and skill[0]=false
{
 if target=noone or team=target.team
 {
  if finish=true {startx=x starty=y}
  
  if instance_exists(inst)
  {
   if collision_circle(x,y,f_attack_distance,inst,1,1)
   {
    if finish=true {target=inst agrotarget=inst finish=false}
   }
  }
 }
 
 if instance_exists(agrotarget) and skill[0]=false
 {
  if !collision_circle(x,y,f_attack_distance,agrotarget,1,1) {if target=agrotarget {walkx=startx walky=starty finish=false if attack=false {agrotarget=noone target=noone spritestate="idle"}}}
 }
}




 
  
if state=0
{
 if target!=noone
 {
  if target.team!=team
  {
   if collision_circle(x,y,f_follow_distance+1,target,1,1)
   {
    spritestate="attack"
   } 
    else 
   {
	spritestate="move"   
   }
  }
 }
} 

if spritestate="attack"
{
 attack=true
 walk=false
 look_to_target()
 if alarm[0]=-1 or image_ignore=asset_get_index(sprite_attack)  {set_attack_melee_stop(asset_get_index(sprite_attack),0.2,5,f_str*1.2)}
}   

///when moving change attack
if spritestate="move"
{
 attack=false
} 



if selected=true
{
 if (!keyboard_check(vk_shift) and global.leader=id) or (keyboard_check(vk_shift) and object_index=global.leader.object_index)	
 {
  if keyboard_check_pressed(ord("1")) 
  {
   if state<1 {state=0}
   spritestate="idle"
   target=noone
   agrotarget=noone
   finish=false
   
   if skill[0]=false
   {
	skill[0]=true	
   }
    else
   {
	skill[0]=false 
   }
  }
 }
}


if skill[0]=true
{
 var healtarget=instance_find_healtarget(UNIT)
 
 //agro a target
 if collision_circle(x,y,f_attack_distance+1,healtarget,1,0) {target=healtarget agrotarget=healtarget finish=false} else {target=noone agrotarget=noone} //finish=false
 
 
 if instance_exists(target) and state<1 and collision_circle(x,y,f_follow_distance+1,target,1,0) and trigger[0]=false
 {
  state=0.1
  ///heal
  if  image_ignore!=spr_angel_unit_5_skill_a
  {
   end_animation=true
   /////////////////////////////
   if sprite_index!=spr_angel_unit_5_skill_a
   {
	//spritestate="skill_a"
    image_speed=0.2
    sprite_index=spr_angel_unit_5_skill_a
    image_index=0
    if target.x>x {image_xscale= 1}
    if target.x<x {image_xscale=-1}
    charge=true
   }
    else
   {
	if floor(image_index)=7 and trigger[0]=false
    {
     alarm[1]=skill_cooldown[0]
	 trigger[0]=true
	 finish=false
     charge=false
	 healing_done(target,f_spi*2.8)
    }
   }
  }   
 }

 ///end of animation
 if floor(image_index)>=image_number-1 and sprite_index=spr_angel_unit_5_skill_a
 {
  image_index=image_number-1
  image_speed=0
  //spritestate="idle"
  attack=false
  target=noone
  finish=false
  if state<1 {state=0}
 }

}



