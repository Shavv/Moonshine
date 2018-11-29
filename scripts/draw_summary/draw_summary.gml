/// @description draw_summary
draw_set_alpha(0.3)
draw_set_color(c_black)
draw_rectangle_ext(UI_x_summary,UI_y_summary,UI_width_summary,UI_height_summary,false)
draw_rectangle_ext(UI_x_portrait,UI_y_portrait,UI_width_portrait,UI_height_portrait,0)

///selected unit name
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_font(UI_font_name)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

///draw summary elements
targett=noone
if global.target!=noone {targett=global.target}
if global.leader!=-1 {targett=global.leader}
if instance_exists(targett)
{
 //name
 draw_text(UI_x_summary+10,UI_y_summary+10,string_hash_to_newline(targett.name))
 
 //portrait
 xscale=(UI_width_portrait)/(targett.sprite_width)
 yscale=(UI_height_portrait)/(targett.sprite_height)
 draw_sprite_part_ext(targett.sprite_index,targett.image_index,0,0,targett.sprite_width*targett.image_xscale,targett.sprite_height*targett.image_yscale,UI_x_portrait,UI_y_portrait,targett.image_xscale*xscale,targett.image_yscale*yscale,c_white,1)
 
 ///health and special bar
 tempcolor=c_health
 if targett.team!=GAME.team {tempcolor=c_enemy}
 draw_bar(UI_x_healthbar,UI_y_healthbar,UI_width_bar,UI_height_bar,targett.hp,targett.f_mhp,tempcolor,c_black,-1)
 draw_bar(UI_x_manabar,UI_y_manabar,UI_width_bar,UI_height_bar,targett.sp,targett.f_msp,c_mana,c_black,-1)
 
 draw_set_alpha(1)
 draw_set_font(UI_numbers)
 draw_set_halign(fa_middle)
 draw_set_valign(fa_middle)
 draw_set_color(c_white)
 
 ///draw mana and health
 draw_text(UI_x_healthbar+UI_width_bar/2,UI_y_healthbar+UI_height_bar/2,string_hash_to_newline(string(string(ceil(targett.hp))+string(" | ")+string(targett.f_mhp))))
 draw_text(UI_x_manabar+UI_width_bar/2,UI_y_manabar+UI_height_bar/2,string_hash_to_newline(string(string(ceil(targett.sp))+string(" | ")+string(targett.f_msp))))
 
 //skils
 draw_set_alpha(0.3)
 draw_set_color(c_black)
 draw_rectangle_ext(UI_x_skill[0],UI_y_skill[0],UI_width_skill,UI_height_skill,0)
 draw_rectangle_ext(UI_x_skill[1],UI_y_skill[1],UI_width_skill,UI_height_skill,0)
 draw_rectangle_ext(UI_x_skill[2],UI_y_skill[2],UI_width_skill,UI_height_skill,0)
 draw_rectangle_ext(UI_x_skill[3],UI_y_skill[3],UI_width_skill,UI_height_skill,0)
 
 draw_set_alpha(1)
 draw_set_font(UI_font_name)
 draw_set_halign(fa_middle)
 draw_set_valign(fa_middle)
 draw_set_color(c_white)
 draw_text(UI_x_skill[0]+UI_width_skill/2,UI_y_skill[0]+UI_height_skill/2,string_hash_to_newline("1"))
 draw_text(UI_x_skill[1]+UI_width_skill/2,UI_y_skill[1]+UI_height_skill/2,string_hash_to_newline("2"))
 draw_text(UI_x_skill[2]+UI_width_skill/2,UI_y_skill[2]+UI_height_skill/2,string_hash_to_newline("3"))
 draw_text(UI_x_skill[3]+UI_width_skill/2,UI_y_skill[3]+UI_height_skill/2,string_hash_to_newline("4"))

 //click on skill
 if mouse_check_button_pressed(mb_left) 
 {
  if mouse_on_ui_part(UI_x_skill[0],UI_y_skill[0],UI_x_skill[0]+UI_width_skill,UI_y_skill[0]+UI_height_skill) {if targett.skill_type[1]="instant" {targett.draw[1]=true} if targett.skill_type[1]="toggle" {keyboard_key_press(global.skill_button[1]) keyboard_key_release(global.skill_button[1])}}
  if mouse_on_ui_part(UI_x_skill[1],UI_y_skill[1],UI_x_skill[1]+UI_width_skill,UI_y_skill[1]+UI_height_skill) {if targett.skill_type[2]="instant" {targett.draw[2]=true} if targett.skill_type[2]="toggle" {keyboard_key_press(global.skill_button[2]) keyboard_key_release(global.skill_button[2])}}
  if mouse_on_ui_part(UI_x_skill[2],UI_y_skill[2],UI_x_skill[2]+UI_width_skill,UI_y_skill[2]+UI_height_skill) {if targett.skill_type[3]="instant" {targett.draw[3]=true} if targett.skill_type[3]="toggle" {keyboard_key_press(global.skill_button[3]) keyboard_key_release(global.skill_button[3])}}
  if mouse_on_ui_part(UI_x_skill[3],UI_y_skill[3],UI_x_skill[3]+UI_width_skill,UI_y_skill[3]+UI_height_skill) {if targett.skill_type[4]="instant" {targett.draw[4]=true} if targett.skill_type[4]="toggle" {keyboard_key_press(global.skill_button[4]) keyboard_key_release(global.skill_button[4])}}
 }
 
 ///show toggle skill
 if targett.skill[1]=true and targett.skill_type[1]="toggle" {draw_sprite(spr_UI_toggle_skill,-1,UI_x_skill[0],UI_y_skill[0])}
 if targett.skill[2]=true and targett.skill_type[2]="toggle" {draw_sprite(spr_UI_toggle_skill,-1,UI_x_skill[1],UI_y_skill[1])}
 if targett.skill[3]=true and targett.skill_type[3]="toggle" {draw_sprite(spr_UI_toggle_skill,-1,UI_x_skill[2],UI_y_skill[2])}
 if targett.skill[4]=true and targett.skill_type[4]="toggle" {draw_sprite(spr_UI_toggle_skill,-1,UI_x_skill[3],UI_y_skill[3])}

 //draw skill timer cooldowns
 draw_set_alpha(0.3)
 draw_set_color(c_black)
 //draw cooldown rectangle
 if targett.alarm[1]>0 {draw_rectangle(UI_x_skill[0],UI_y_skill[0]+UI_height_skill,UI_x_skill[0]+UI_width_skill,(UI_y_skill[0]-(targett.alarm[1]/targett.skill_cooldown[1])*UI_height_skill)+UI_height_skill,0)}
 if targett.alarm[2]>0 {draw_rectangle(UI_x_skill[1],UI_y_skill[1]+UI_height_skill,UI_x_skill[1]+UI_width_skill,(UI_y_skill[1]-(targett.alarm[2]/targett.skill_cooldown[2])*UI_height_skill)+UI_height_skill,0)}
 if targett.alarm[3]>0 {draw_rectangle(UI_x_skill[2],UI_y_skill[2]+UI_height_skill,UI_x_skill[2]+UI_width_skill,(UI_y_skill[2]-(targett.alarm[3]/targett.skill_cooldown[3])*UI_height_skill)+UI_height_skill,0)}
 if targett.alarm[4]>0 {draw_rectangle(UI_x_skill[3],UI_y_skill[3]+UI_height_skill,UI_x_skill[3]+UI_width_skill,(UI_y_skill[3]-(targett.alarm[4]/targett.skill_cooldown[4])*UI_height_skill)+UI_height_skill,0)}
 
 
 
 
 draw_set_alpha(1)
 draw_set_font(UI_numbers)
 draw_set_halign(fa_right)
 draw_set_valign(fa_top)
 draw_set_color(c_white)
 
 if targett.alarm[1]>0 {draw_text(UI_x_skill[0]+UI_width_skill,UI_y_skill[0],targett.alarm[1]/room_speed)}
 if targett.alarm[2]>0 {draw_text(UI_x_skill[1]+UI_width_skill,UI_y_skill[1],targett.alarm[2]/room_speed)}
 if targett.alarm[3]>0 {draw_text(UI_x_skill[2]+UI_width_skill,UI_y_skill[2],targett.alarm[3]/room_speed)}
 if targett.alarm[4]>0 {draw_text(UI_x_skill[3]+UI_width_skill,UI_y_skill[3],targett.alarm[4]/room_speed)}
 
 //section skills
 draw_set_alpha(0.3)
 draw_set_color(c_black)
 if UI_section_link!=-1
 {
  ///draw border around skills and skills itself
  draw_rectangle_ext(UI_x_section,UI_y_section,UI_width_section,UI_height_section,0)
  draw_rectangle_ext(UI_x_section_skill[0],UI_y_section_skill[0],UI_width_skill,UI_height_skill,0)
  draw_rectangle_ext(UI_x_section_skill[1],UI_y_section_skill[1],UI_width_skill,UI_height_skill,0)
  draw_rectangle_ext(UI_x_section_skill[2],UI_y_section_skill[2],UI_width_skill,UI_height_skill,0)
  draw_rectangle_ext(UI_x_section_skill[3],UI_y_section_skill[3],UI_width_skill,UI_height_skill,0) 
  ///draw link to skill
  draw_rectangle_ext((UI_x_skill[UI_section_link]+UI_width_skill/2)-15,UI_y_skill[UI_section_link]-20,30,10,0)
  
  //draw slot numbers
  draw_set_alpha(1)
  draw_set_font(UI_font_name)
  draw_set_halign(fa_middle)
  draw_set_valign(fa_middle)
  draw_set_color(c_white)
  draw_text(UI_x_section_skill[0]+UI_width_skill/2,UI_y_section_skill[0]+UI_height_skill/2,string_hash_to_newline("CTRL#+1"))
  draw_text(UI_x_section_skill[1]+UI_width_skill/2,UI_y_section_skill[1]+UI_height_skill/2,string_hash_to_newline("CTRL#+2"))
  draw_text(UI_x_section_skill[2]+UI_width_skill/2,UI_y_section_skill[2]+UI_height_skill/2,string_hash_to_newline("CTRL#+3"))
  draw_text(UI_x_section_skill[3]+UI_width_skill/2,UI_y_section_skill[3]+UI_height_skill/2,string_hash_to_newline("CTRL#+4"))
 }
}


///draw cubes for units
if count_selected()>0
{
 draw_set_alpha(1)
 draw_summary_square_info(0,5,0)
 draw_summary_square_info(5,10,1)
 draw_summary_square_info(10,15,2)
 draw_summary_square_info(15,20,3)
 draw_summary_square_info(20,25,4)
 draw_summary_square_info(25,30,5)
 draw_summary_square_info(30,35,6)
 draw_summary_square_info(35,40,7)
 draw_summary_square_info(40,45,8)
 draw_summary_square_info(45,50,9)
 //draw_summary_square_info(50,55,9)
 //draw_summary_square_info(55,60,10)
 //draw_summary_square_info(60,65,11)
 //draw_summary_square_info(65,70,12)
 //draw_summary_square_info(70,75,13)
 //draw_summary_square_info(75,50,14) 
}


draw_set_color(c_black)
draw_set_alpha(1)
