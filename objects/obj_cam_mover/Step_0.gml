/// @description move
//if(world_keyboard_check()){
    if keyboard_check(ord("A")) {x-=global.cam_speed}
    if keyboard_check(ord("W")) {y-=global.cam_speed}
    if keyboard_check(ord("S")) {y+=global.cam_speed}
    if keyboard_check(ord("D")) {x+=global.cam_speed}
//}

if window_has_focus()
{
 if window_mouse_get_x()>window_get_width()-10   {x+=global.cam_speed}
 if window_mouse_get_x()<10                      {x-=global.cam_speed}
 if window_mouse_get_y()>window_get_height()-10  {y+=global.cam_speed}
 if window_mouse_get_y()<10                      {y-=global.cam_speed}
}

