/// @description draw_summary_square_info(number,maxnumber,row)
/// @param number
/// @param maxnumber
/// @param row
var cubeheight;
var cubewidth;
var cubex;
var cubey;
var unitt;

cubeheight=50
cubewidth=50
cubex=UI_x_map+UI_width_map //_map
cubey=UI_y_map+UI_height_map+10

for (t=argument0;t<argument1;t+=1)
{
 if global.unit[t]!=-1
 {
  if instance_exists(global.unit[t])
  {
   unitt=global.unit[t]
   if unitt.team=GAME.team and unitt.selected=true
   { 
    draw_set_color(c_white)
    ///draw character plate
    draw_sprite(asset_get_index(unitt.sprite_cover),-1,cubex+((t-argument1)*(cubewidth+2)),cubey+(argument2*(cubeheight+2)))
    //
    draw_set_halign(fa_right)
    draw_set_valign(fa_top)
    draw_text(cubex+((t-argument1)*(cubewidth+2))+cubewidth/*/2*/,cubey+(argument2*(cubeheight+2))/*+cubeheight/2*/,string_hash_to_newline(t+1))
    if instance_exists(global.leader) {if unitt=global.leader {draw_set_color(c_black)}}
    draw_rectangle(cubex+((t-argument1)*(cubewidth+2)),cubey+(argument2*(cubeheight+2)),cubex+((t-argument1)*(cubewidth+2))+cubewidth,cubey+(argument2*(cubeheight+2))+cubeheight,1)
    draw_bar(cubex+((t-argument1)*(cubewidth+2)),cubey+(argument2*(cubeheight+2))+cubeheight-2-2,cubewidth,3,unitt.hp,unitt.f_mhp,c_health,c_black,c_black)
    draw_bar(cubex+((t-argument1)*(cubewidth+2)),cubey+(argument2*(cubeheight+2))+cubeheight-1,cubewidth,1,unitt.sp,unitt.f_msp,c_mana,c_black,c_black)
    if mouse_on_ui_part(cubex+((t-argument1)*(cubewidth+2)),cubey+(argument2*(cubeheight+2)),cubex+((t-argument1)*(cubewidth+2))+cubewidth+3,cubey+(argument2*(cubeheight+2))+cubeheight+3)=true
    {
     global.mouse_ui=true
     if mouse_check_button_released(mb_left)
     {
      if global.leader=unitt
	  {
       with (SELECTABLE) {select(false)}
	   with (unitt) {select(true)}
	  }
	   else
	  {
	   global.leader=unitt  
	  }
     }
    }
   }
  }
 } 
}
