/// @description (full)screen and cam_move
/// @param full
global.zoomfactor=3
global.cam_option=1 //0=dynamic //1=free dynamic
dh=window_get_height()
dw=window_get_width()
screenshake=0
xx=0 
yy=0
imx=0



///spr_cam_mover
global.cam_speed=8
global.cam_follow_speed=10
instance_create(x,y,obj_cam_mover)
cam_target=obj_cam_mover
cam_target_p=obj_cam_mover

