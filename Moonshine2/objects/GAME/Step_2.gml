/// @description global.mouse
if global.mouse_ui=false
{
 global.mousex=mouse_x
 global.mousey=mouse_y
}

//if global.clampmap=true {window_mouse_set(clamp(window_mouse_get_x(),UI_x_map,UI_x_map+UI_width_map),clamp(window_mouse_get_y(),UI_y_map,UI_y_map+UI_height_map))}

///set leader to number one
/*
if global.leader!=-1
{
 if global.leader!=global.unit[0]
 {
  for (i=0;i<count_selected();i+=1)
  {
   if instance_exists(global.unit[i])
   {
    if global.unit[i]=global.leader
    {
     var oldleader
     var newleader
     oldleader=global.leader
     newleader=global.unit[i]
     
     global.unit[i]=global.unit[0]  
     //global.unit[0]=global.leader  
    }  
   }
  } 
  global.unit[0]=global.leader
 }
}

/* */
/*  */
