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


///corpse explosion
inst=instance_find_enemy(CORPSE)

if ai=0
{
 if target=noone
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
  if target.team=99
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
 if (alarm[0]=-1 or image_ignore=asset_get_index(sprite_attack)) and instance_exists(target) {set_attack_hitbox(asset_get_index(string(sprite_attack)),0.2,12,f_int*1,unit_demon_3_corpse_explosion,target.x,target.y)}
}   

///when moving change attack
if spritestate="move"
{
 attack=false
} 



