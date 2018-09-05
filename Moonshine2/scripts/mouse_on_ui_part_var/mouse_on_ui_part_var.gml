/// @description mouse_on_ui_part_var(x,y,x2,y2,VarToCheckFor,NOTEQUALTO)
/// @param x
/// @param y
/// @param x2
/// @param y2
/// @param VarToCheckFor
/// @param NOTEQUALTO
if (window_mouse_get_x()>argument0 and window_mouse_get_x()<argument2)
and (window_mouse_get_y()>argument1 and window_mouse_get_y()<argument3)
and argument4!=argument5
{
 return true;
} 
 else
{
 return false;
}
