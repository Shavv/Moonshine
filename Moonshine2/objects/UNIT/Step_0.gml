/// @description moving
if instance_exists(target)
{
 //
}
 else
{
 if target!=noone
 {
  walkx=x
  walky=y
  finish=true
  attack=false
  target=noone
  spritestate="idle"
 }
}


#region //Moving

///click to move
if target=noone {distance=1} else {distance=f_follow_distance-10}

if state=0 
{
 if spritestate!="attack"
 {
  ///walking
  if finish=false
  {
   if distance_to_point(walkx,walky)>distance //global.selected_units //(global.selected_units*(sprite_width/2))
   { 
    spritestate="move"
    if flying=false and onground=true and onairship=false
    {
     mp_potential_step(walkx,walky,f_movespeed,false)
    }
    
	
	//if onairship=true and flying=false {mp_potential_step(walkx,walky,f_movespeed/2,false)}
    //if flying=true {mp_potential_step_object(walkx,walky,f_movespeed,SOLID) }  
	
	
   }
    else
   {
    spritestate="idle"
    //if spritestate!="attack" or (spritestate="attack" and attacked=true) {spritestate="idle"}
    if target=noone {finish=true}  
   }
  } 
 }
}

#endregion

#region //fog of war

if instance_exists(LIGHTNING)
{
 if team!=GAME.team
 {
  var enemy;
  enemy=instance_find_enemy(SELECTABLE)
  
  if enemy!=noone
  {
   if distance_to_object(enemy)<300
   {
	visible=true   
   }
    else
   {
	visible=false   
   }
  }
   else
  {
   visible=false  
  }
 }
  else
 {
  visible=true	 
 }
}
 else
{
 visible=true	
}

#endregion

///depth
depth=-y

if state=0
{
 if round(x)>round(xprevious) {image_xscale= 1}
 if round(x)<round(xprevious) {image_xscale=-1}
}

///check if target is death
if instance_exists(target)
{
 if target.state=99
 {
  if instance_exists(agrotarget)
  {
   if agrotarget.state!=99
   {
    target=agrotarget
    finish=false
   }
    else
   {
    finish=true
    walkx=x
    walky=y    
   }
  }
   else
  {
   finish=true
   walkx=x
   walky=y
  }
 }
  else
 {
  walkx=target.x
  walky=target.y
 }
}

///END



