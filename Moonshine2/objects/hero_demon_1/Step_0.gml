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

 
if ai=0
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
 
 if instance_exists(agrotarget)
 {
  if !collision_circle(x,y,f_attack_distance,agrotarget,1,1) {if target=agrotarget {walkx=startx walky=starty finish=false if attack=false {agrotarget=noone target=noone spritestate="idle"}}}
 }
}




 
///basic attack 
if state=0
{
 if target!=noone
 {
  if target.team!=team
  {
   if collision_circle(x,y,f_follow_distance+1,inst,1,1)
   {
    spritestate="attack"
   } 
  } 
 }
} 

if spritestate="attack"
{
 attack=true
 walk=false
 look_to_target()
 if alarm[0]=-1 or image_ignore=asset_get_index(sprite_attack)  {set_attack_melee_stop(asset_get_index(sprite_attack),0.2,10,f_str*1.9)}
}   

///when moving change attack
if spritestate="move"
{
 attack=false
} 






/*

///skill A: instant
if selected=true
{
 if (!keyboard_check(vk_shift) and global.leader=id) or (keyboard_check(vk_shift) and global.leader.object_index=object_index)
 {
  if alarm[1]=-1 //skill a cooldown timer
  {
   if keyboard_check_pressed(ord("1"))  {draw[0]=true}
   if mouse_check_button_pressed(mb_right) {draw[0]=false}
   if state=0 and draw[0]=true
   {
	if keyboard_check_released(ord("1")) or (global.mouse_skill=true and mouse_check_button_pressed(mb_left))
	{
     skilldir=point_direction(global.leader.x,global.leader.y,mouse_x,mouse_y)
	 alarm[1]=skill_cooldown[0]
	 skill[0]=true
	}   
   }
  }
 }
}




if skill[0]=true and state<1
{
 state=0.1
 draw[0]=false
 ///shoot ice bolt
 if  image_ignore!=spr_demon_unit_4_skill_a
 {
  var imageindexrounded = floor(image_index)
  end_animation=true
  /////////////////////////////
  if sprite_index!=spr_demon_unit_4_skill_a
  {
   //spritestate="skill_a"
   image_speed=0.2
   sprite_index=spr_demon_unit_4_skill_a
   image_index=0
   if mouse_x>global.leader.x {image_xscale= 1}
   if mouse_x<global.leader.x {image_xscale=-1}
   charge=true
  }
   else
  {
   if imageindexrounded=9 and trigger[0]=false
   {
    trigger[0]=true
    charge=false
    j=instance_create(x,y,unit_demon_4_skill_a_projectile)
	j.direction=skilldir
    j.image_xscale=image_xscale
    j.team=team
    j.dmg=str*3
   }
  }
 }   
 
 ///end of animation
 if imageindexrounded>=image_number-1
 {
  image_index=image_number-1
  image_speed=0
  skill[0]=false
  spritestate="idle"
  if state<1 {state=0}
 }
}

*/

if state!=0
{
 draw[0]=false
}


