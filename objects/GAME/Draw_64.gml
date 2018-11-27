/// @description UI 
if UI=true
{ 
 draw_set_halign(fa_right)
 draw_set_valign(fa_top)
 draw_set_font(UI_FPS)
 draw_set_color(c_black)
 draw_text(UI_x_map,0,string(fps))
 //test
 draw_set_halign(fa_left)
 
 draw_set_font(UI_font_name)
 draw_text(0,0 ,string(global.target)) 
 draw_text(0,10,string(global.leader)) 
 draw_text(0,20,string(global.selected_units)) 


 mouse_on_ui()

 draw_minimap() 
 draw_summary()
 draw_set_alpha(0.3)
 draw_set_color(c_black)
 draw_rectangle_ext(UI_x_recources,UI_y_recources,UI_width_recources,UI_height_recources,false)
 
}
draw_set_alpha(1)

