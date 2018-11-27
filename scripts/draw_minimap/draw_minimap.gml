/// @description draw_minimap

//view_wview[1]=room_height
//view_hview[1]=room_width
//view_xport[1]=UI_x_map
//view_yport[1]=UI_y_map
//view_hport[1]=UI_height_map
//view_wport[1]=UI_width_map
//room_set_view(room,1,true,0,0,room_width,room_height,UI_x_map,UI_y_map,UI_height_map,UI_width_map,0,0,0,0,-1)


draw_set_alpha(0.3)
draw_set_color(c_black)
draw_rectangle_ext(UI_x_map,UI_y_map,UI_width_map,UI_height_map,false)


//draw units on the minimap
draw_set_color(make_colour_rgb(3, 207, 254))
draw_set_alpha(1)
var units
units= instance_number(SELECTABLE)
for (k=0; k<units; k=k+1)
{
 unitsid=instance_find(SELECTABLE,k)
 if unitsid.visible=true
 {
  var wherex=UI_x_map+unitsid.x*(UI_xscale_map)
  var wherey=UI_y_map+unitsid.y*(UI_yscale_map)
  if unitsid.team=GAME.team {draw_set_color(make_colour_rgb(3, 207, 254))} else {draw_set_color(c_red)}
  ///dont display dead units
  if unitsid.f_mass!=undefined and unitsid.team!=99 {draw_circle(wherex,wherey,2,false)}
  if unitsid.selected=true
  {
   draw_set_color(c_white)
   if unitsid.f_mass!=undefined {draw_circle(wherex,wherey,2,true)}
   if unitsid.spritestate="move" {draw_line(wherex,wherey,UI_x_map+unitsid.walkx*(UI_xscale_map),UI_y_map+unitsid.walky*(UI_yscale_map))}
  }
 }
}


draw_set_color(c_white)
draw_rectangle_ext(UI_x_map+__view_get( e__VW.XView, 0 )*(UI_xscale_map),UI_y_map+__view_get( e__VW.YView, 0 )*(UI_yscale_map),__view_get( e__VW.WView, 0 )*(UI_xscale_map),__view_get( e__VW.HView, 0 )*(UI_yscale_map),1)


///mouse on map
if  mouse_on_ui_part(UI_x_map,UI_y_map,UI_x_map+UI_width_map,UI_y_map+UI_height_map)=true
{
 global.mousex=(window_mouse_get_x()-UI_x_map)/UI_xscale_map
 global.mousey=(window_mouse_get_y()-UI_y_map)/UI_yscale_map
 
 if mouse_check_button(mb_left)
 {
  with (obj_cam) {x=global.mousex y=global.mousey}
  with (obj_cam_mover) {x=global.mousex y=global.mousey}
  global.clampmap=true
 }
}


if mouse_check_button_released(mb_left)
{
 global.clampmap=false
}



