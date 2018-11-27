/// @description obj player
draw_set_color(c_black)
d3d_set_fog(true,c_black,0,1)

//shadow x and y
var sx=10 //display_get_width()/2-display_mouse_get_x()
var sy=30 //display_get_height()/2-display_mouse_get_y()


////////////////////////////////////////
if instance_exists(obj_player)
{
 with (obj_player)
 {
  //
  var animation,skin,yy;
  animation=skeleton_animation_get()
  skin=skeleton_skin_get()
  yy=20
  draw_skeleton(sprite_index,animation,skin,image_index,x,y+yy,image_xscale,-global.sun_distance,global.sun_angle,c_black,1)
  //
 }
}
////////////////////////////////////////////
if instance_exists(obj_test_tree)
{
 with (obj_test_tree)
 {
  draw_sprite_pos(sprite_index,image_index,x-(sprite_width/2)-sx,y-sy,x+(sprite_width/2)-sx,y-sy,x+sprite_width/2,y,x-sprite_width/2,y,1)
  //draw_sprite_ext(sprite_index,image_index,x,y-1,image_xscale,-global.sun_distance,global.sun_angle,c_black,1)
 }
}
////////////////////////////////////////////
if instance_exists(npc_0_target)
{
 with (npc_0_target)
 {
  draw_sprite_pos(sprite_index,image_index,x-(sprite_width/2)-sx,y-sy,x+(sprite_width/2)-sx,y-sy,x+sprite_width/2,y,x-sprite_width/2,y,1)
  //draw_sprite_ext(sprite_index,image_index,x,y-1,image_xscale,-global.sun_distance,global.sun_angle,c_black,1)
 }
}

d3d_set_fog(false,c_white,0,0)

