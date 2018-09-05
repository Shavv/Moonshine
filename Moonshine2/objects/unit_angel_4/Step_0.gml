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
if hp<=0                  {set_image_die_stop(asset_get_index(sprite_die),0.2)}


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
  } 
 }
} 

if spritestate="attack"
{
 attack=true
 walk=false
 look_to_target()
 if alarm[0]=-1 or image_ignore=asset_get_index(sprite_attack)  {set_attack_ranged_stop(asset_get_index(sprite_attack),0.2,6,f_agi*2,unit_angel_4_projectile,x+image_xscale*5,y)}
}   

///when moving change attack
if spritestate="move"
{
 attack=false
} 



