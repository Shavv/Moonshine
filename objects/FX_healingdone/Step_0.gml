/// @description make effect
// You can write your code in this editor
depth=-(y+100)
y-=0.2
image_alpha-=0.005

if image_alpha<=0
{
 instance_destroy()
}