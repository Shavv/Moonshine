/// @description Moving units and selecting units
//lfps_step()

if mouse_check_button_pressed(mb_left)
{
 xx=mouse_x
 yy=mouse_y
 instance_create(mouse_x,mouse_y,MOUSE_HITBOX)
}

if mouse_check_button(mb_left)
{
 xxx=mouse_x
 yyy=mouse_y
 //if created=false and alarm[1]=-1 { created=true}
}

mouse_check_button_released(mb_left)
{
 created=false
}

///move units
if global.mouse_over=noone
{
 if mouse_check_button(mb_right)
 {
  global.target=noone
  if count_selected()>0
  {
   ///square formation
   //if global.formation=1 {set_position()}
   
   ///free position
   if global.formation=0
   {
    for (g=0;g<global.maxselected;g+=1;) //count_selected()
    {
     var ff=global.unit[g]
     if instance_exists(ff)
     {
      if ff!=-1 and ff.team=GAME.team
      {
       ff.walkx=global.mousex//mouse_x
       ff.walky=global.mousey//mouse_y
       ff.startx=global.mousex//mouse_x
       ff.starty=global.mousey//mouse_y
       ff.finish=false
       ff.target=noone
       ff.agrotarget=noone
       ff.spritestate="move"
      }
     } 
    } 
   }  
  }
 }
}
 else
{
 //
}



//right mouse button clicking
if mouse_check_button_pressed(mb_right)
{
 if count_selected()>0
 {
  var obj=global.mouse_over;
  if instance_exists(obj)
  {
   for(b=0;b<count_selected();b+=1)
   {
    if obj.object_index!=RUIN and obj.object_index!=CORPSE
    {
     if obj.selected=false
     {
 	  global.unit[b].finish=false
 	  global.unit[b].target=obj
 	  global.unit[b].startx=obj.x
 	  global.unit[b].starty=obj.y
 	  global.unit[b].spritestate="idle"
 	  global.target=obj
     } 
      else
     {
      global.unit[b].target=noone
      global.target=noone
     }
	}
   }
  }
 }
}

///select units
if global.mouse_ui=false and global.mouse_skill=false
{
 
 ///left mouse button clicking
 ///////////////////////////////////////////////////////////////////////////
 var inst;
 var col;
 var action;
 
 action=false
 ///////////////////////////////////////////// 
 if mouse_check_button_pressed(mb_left)
 {
  alarm[0]=10
 }
 
 //deselect
 if mouse_check_button_pressed(mb_left)
 {
  if global.mouse_over=noone
  {
   if !keyboard_check(vk_shift)
   {
    if instance_exists(SELECTABLE)
    {
     with (SELECTABLE) {select(false)}
    }
   }
  }
 } 
 
 
 
 //select single
 var obj=global.mouse_over;
 if instance_exists(obj)
 {
  if obj.object_index!=RUIN and obj.object_index!=CORPSE
  {
   ///single click left
   if mouse_check_button_released(mb_left)
   {
    ///hold shift = dont deselect
    if !keyboard_check(vk_shift) {with(obj) {select(false) global.target=noone selected=false}}
    if alarm[0]!=-1              {with(obj) {select(true) }}
   }    
  } 
 } 
 
 
 ///double click select troops
 if mouse_check_button_released(mb_left)
 {
  if alarm[1]>0 //else
  {
   //double click
   if instance_exists(global.mouse_over)
   {
    if keyboard_check(vk_shift)
    {
     var obj;
     obj=global.mouse_over
     with(obj.object_index) {if distance_to_point(mouse_x,mouse_y)<500 {select(true)}}
    }
   }
  }
  alarm[1]=15
 }
  
 
 
 ///drag click
 with(UNIT)
 {
  if team=GAME.team
  {
   if !place_meeting(x,y,MOUSE_HITBOX)
   {
    if !position_meeting(mouse_x,mouse_y,self) and mouse_check_button(mb_left) and !keyboard_check(vk_shift) //and alarm[0]=-1
    {
     select(false)
    }    
   }
    else
   {
    if GAME.alarm[0]=-1 {select(true)}
   }
  }
 }


 /////////////////////////////////////////////////////////////////////////////////
}



