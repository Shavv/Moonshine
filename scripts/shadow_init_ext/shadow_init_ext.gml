/// @description shadow_init_ext()
var slope=global.shadow_slope    //slope
var hor_angle=global.shadow_hor_angle  //horizon angle
var sh_angle=global.shadow_sh_angle    //shadow angle
var sh_yscale=global.shadow_sh_yscale   //shadow y scale
var alpha=global.shadow_alpha       //alpha
///obj player
draw_set_color(c_black)
d3d_set_fog(true,c_black,0,1)

////////////////////////////////////////
if instance_exists(UNIT){with (UNIT){shadow_create(slope,hor_angle,sh_angle,sh_yscale,alpha)}}
if instance_exists(PROJECTILE){with (PROJECTILE){shadow_create(slope,hor_angle,sh_angle,sh_yscale,alpha)}}

/////////////////////////////////////////////////
d3d_set_fog(false,c_white,0,0)

