/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if spritestate="attack"
{
 if image_index>4 
 {
  if instance_exists(target)
  {
   imageindex+=1
   draw_sprite_ext(spr_demon_unit_5_breath,imageindex,x+(image_xscale*6),y-12,1,1,point_direction(x,y,target.x,target.y),c_white,0.8)	 
  }
 }
}