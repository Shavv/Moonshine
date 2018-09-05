/// @description shadow_create_surface(slope,horizon_angle,shadow_angle,alpha)
/// @param slope
/// @param horizon_angle
/// @param shadow_angle
/// @param alpha
if surface_exists(global.surf)
{
 surface_set_target(global.surf)
 d3d_transform_set_rotation_x(argument0);  //slope of floor  //-75
 d3d_transform_add_translation(x,y,0);
 shadow_elevation_angle = argument1;  //angle of light source above horizon //45
 shadow_compass_angle=argument2; //angle //0
 shadow_y_scale = 1/dtan(shadow_elevation_angle);
 draw_sprite_ext(sprite_index,image_index,0,0,image_xscale, shadow_y_scale,shadow_compass_angle,c_black,argument3);  //draw shadow
 d3d_transform_set_identity()
 surface_reset_target()
}
