/// @description get not to close to room border
if y>room_height-(__view_get( e__VW.HView, 0 )/2) {y=room_height-(__view_get( e__VW.HView, 0 )/2)}
if y<__view_get( e__VW.HView, 0 )/2               {y=__view_get( e__VW.HView, 0 )/2}
if x>room_width-(__view_get( e__VW.WView, 0 )/2)  {x=room_width-(__view_get( e__VW.WView, 0 )/2)}
if x<__view_get( e__VW.WView, 0 )/2               {x=__view_get( e__VW.WView, 0 )/2}

if global.cam_option=0 and obj_cam.cam_target!=obj_cam_mover
{
 x=obj_cam.x
 y=obj_cam.y
}



