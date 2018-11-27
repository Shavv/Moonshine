/// @description skill_draw()
var dir,leaderdir,sc,mlx,mly,radius,xdis,ydis;
sc=make_color_rgb(0, 231, 255)

radius=100
dir=point_direction(x,y,mouse_x,mouse_y)
xdis=point_distance(x,y,mouse_x,mouse_y)
ydis=point_distance(x,y,mouse_x,mouse_y)


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

if object_index=hero_demon_1
{
 if draw[0]=true
 {
  radius=100
  draw_set_color(sc)
  draw_set_alpha(1) 	
  draw_circle(x,y,radius,1)
  draw_set_alpha(0.3)
  draw_circle(x+lengthdir_x(clamp(xdis,-radius,radius),dir),y+lengthdir_y(clamp(ydis,-radius,radius),dir),80,0)
  //draw_circle(clamp(mouse_x,0,lengthdir_x(100,point_direction(x,y,mouse_x,y))),mouse_y,100,0)
 }
}
