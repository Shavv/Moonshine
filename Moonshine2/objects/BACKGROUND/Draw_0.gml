/// @description draw

///draw target
if instance_exists(global.target)
{
 with (global.target)
 {
  if state!=99
  {
   if team=GAME.team
   {
    draw_ellipse_colour(x-f_mass*5,y-f_mass*3,x+f_mass*5,y+f_mass*3,c_orange,c_orange,1)
   }
    else
   {
    draw_ellipse_colour(x-f_mass*5,y-f_mass*3,x+f_mass*5,y+f_mass*3,c_purple,c_red,1)
   } 
  }
 }
}


///draw selected units
if instance_exists(UNIT)
{
 with (UNIT)
 {
  if state!=99
  {
   if team=GAME.team
   {
    draw_set_alpha(0.5)
    if global.leader=id {draw_ellipse_colour(x-f_mass*5,y-f_mass*3,x+f_mass*5,y+f_mass*3,c_orange,c_orange,0)}
    draw_set_alpha(1)  
    if selected=true {draw_set_color(c_white)
    //if !gms_instance_is_owner(id) {draw_set_color(c_yellow)}
    draw_ellipse(x-f_mass*5,y-f_mass*3,x+f_mass*5,y+f_mass*3,1)}
    
	
	///draw skills
	skill_draw()

   }
    else
   {
    draw_set_alpha(1)
    if selected=true {draw_ellipse_colour(x-f_mass*5,y-f_mass*3,x+f_mass*5,y+f_mass*3,c_red,c_red,1)}
   }
  }
 }
}




///draw selected buildings
if instance_exists(BUILDING)
{
 with (BUILDING)
 {
  if state!=99
  {
   if team=GAME.team
   {
    draw_set_alpha(0.5)
    if global.leader=id {draw_ellipse_colour(x-sprite_width/1.8,y-sprite_height/4,x+sprite_width/1.8,y+sprite_height/3,c_orange,c_orange,0)}
    draw_set_alpha(1)
    if selected=true {draw_ellipse_colour(x-sprite_width/1.8,y-sprite_height/4,x+sprite_width/1.8,y+sprite_height/3,c_white,c_white,1)}
   }
  }
 }
}

draw_set_color(c_black)


