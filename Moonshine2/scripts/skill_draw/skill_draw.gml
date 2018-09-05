/// @description skill_draw()
var dir,leaderdir,sc;
dir=point_direction(x,y,mouse_x,mouse_y)
sc=make_color_rgb(0, 231, 255)
if instance_exists(global.leader)
{
 leaderdir=point_direction(global.leader.x,global.leader.y,mouse_x,mouse_y)
}
 else
{
 leaderdir=0	
}


///draw skills
if object_index=unit_demon_4
{
 if draw[0]=true
 {
  draw_set_color(sc)
  draw_set_alpha(1)
  draw_rectangle_rotated(x,y,120,11,leaderdir,1)
  draw_set_alpha(0.3)
  draw_rectangle_rotated(x,y,120,11,leaderdir,0)
 }
}
