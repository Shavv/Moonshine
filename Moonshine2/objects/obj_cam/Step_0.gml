/// @description zoomfactor
dh=window_get_height()
dw=window_get_width()

__view_set( e__VW.WView, 0, dw/global.zoomfactor )
__view_set( e__VW.HView, 0, dh/global.zoomfactor )
//zoom with keys
if mouse_wheel_down()
{
 if global.zoomfactor>0.5 {global.zoomfactor-=0.1}
}
if mouse_wheel_up()
{
 if global.zoomfactor<10 {global.zoomfactor+=0.1}
}

///view follow cam
if(keyboard_check(vk_space)) //&& world_keyboard_check())
{
 __view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2 );
 __view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2 );
 if instance_exists(cam_target_p)
 {
  obj_cam_mover.x=cam_target_p.x
  obj_cam_mover.y=cam_target_p.y
 }
}
 else
{
 if global.cam_option=0
 {
  __view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2 );
  __view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2 );
 } 
 
 if global.cam_option=1
 {
  __view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2 );
  __view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2 );
 }
}


__view_set( e__VW.XView, 0, median(0, __view_get( e__VW.XView, 0 ), room_width - __view_get( e__VW.WView, 0 ) ))
__view_set( e__VW.YView, 0, median(0, __view_get( e__VW.YView, 0 ), room_height - __view_get( e__VW.HView, 0 ) )) 

//screenshake
if (keyboard_check(vk_delete)) //&& world_keyboard_check())
{
 scr_shake_view(10)
}



//move towards player
if global.cam_option=0 and cam_target!=obj_cam_mover
{
 if distance_to_point(cam_target.x,cam_target.y)>1
 {
  move_towards_point(cam_target.x,cam_target.y,distance_to_point(cam_target.x,cam_target.y)/global.cam_follow_speed)
 }
  else
 {
  speed=0
 }
}

if global.cam_option=1 or (cam_target=obj_cam_mover and global.cam_option=0)
{
 if distance_to_point(obj_cam_mover.x,obj_cam_mover.y)>1
 {
  move_towards_point(obj_cam_mover.x,obj_cam_mover.y,distance_to_point(obj_cam_mover.x,obj_cam_mover.y)/global.cam_follow_speed)
 }
  else
 {
  speed=0
 }
}

//move with keys or mouse


