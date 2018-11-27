/// @description mouse_on_ui_part(x,y,x2,y2)
/// @param x
/// @param y
/// @param x2
/// @param y2
if (window_mouse_get_x()>argument0 and window_mouse_get_x()<argument2)
and (window_mouse_get_y()>argument1 and window_mouse_get_y()<argument3)
{
 return true;
} 
 else
{
 return false;
}
