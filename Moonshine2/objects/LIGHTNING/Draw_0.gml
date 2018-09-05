/// @description draw surface and light on targets
if !surface_exists(global.day_night)
{
 global.day_night=surface_create(__view_get( e__VW.WView, 0 )*scale,__view_get( e__VW.HView, 0 )*scale)
}
 else
{
 surface_set_target(global.day_night) 
 draw_clear(c_white) //c_white
 draw_set_alpha(1)
 light_object()
 surface_reset_target()
 draw_set_blend_mode(bm_subtract) //bm_subtract                                              //res
 draw_surface_ext(global.day_night,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),res,res,0,make_colour_rgb((global.alpha*255)-global.flash,(global.alpha*255)-global.flash,(global.alpha*255)-global.flash),1)//global.alpha
 draw_set_blend_mode(bm_normal)
}

