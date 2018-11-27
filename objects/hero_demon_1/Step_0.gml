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
     var xdis,ydis,dir;
	 
	 skilldir=point_direction(global.leader.x,global.leader.y,mouse_x,mouse_y)
	 dir=point_direction(x,y,mouse_x,mouse_y)
	 xdis=point_distance(x,y,mouse_x,mouse_y)
     ydis=point_distance(x,y,mouse_x,mouse_y)
	 
	 skillx=x+lengthdir_x(clamp(xdis,-skill_range[0],skill_range[0]),dir)
	 skilly=y+lengthdir_y(clamp(ydis,-skill_range[0],skill_range[0]),dir)
	 alarm[1]=skill_cooldown[0]
	 skill[0]=true
	 state=0.1
	}   
   }
  }
 }
}




if skill[0]=true and state<1
{
 draw[0]=false
 
 
 ///nuke down like a ice maniac
 if  image_ignore!=spr_demon_hero_1_skill_b
 {
  var imageindexrounded = floor(image_index)
  end_animation=true
  /////////////////////////////
  if sprite_index!=spr_demon_hero_1_skill_b
  {
   //spritestate="skill_a"
   image_speed=1.4
   sprite_index=spr_demon_hero_1_skill_b
   image_index=0
   if mouse_x>global.leader.x {image_xscale= 1}
   if mouse_x<global.leader.x {image_xscale=-1}
   charge=true
  }
   else
  {
   if imageindexrounded>18 and imageindexrounded<40
   {
	 state=0.9
	 if distance_to_point(skillx,skilly)>1 {move_towards_point(skillx,skilly,clamp((point_distance(x,y,skillx,skilly))/20,0.5,10))} else {move_towards_point(x,y,0)}   
   }
    else
   {
	move_towards_point(x,y,0)   
   }
   
   if imageindexrounded=40 and trigger[0]=false
   {
    state=0.1
	trigger[0]=true
    charge=false
    j=instance_create(skillx,skilly,obj_hero_demon_1_b_ice)
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
  startx=x
  starty=y
  if state<1 {state=0}
 }
}



if state!=0
{
 draw[0]=false
}


