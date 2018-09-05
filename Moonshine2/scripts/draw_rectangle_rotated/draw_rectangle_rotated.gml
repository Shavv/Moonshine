/// @description draw_rectangle_rotated(x,y,width,height,rotation,outline)
/// @param x
/// @param y
/// @param width
/// @param height
/// @param rotation
/// @param outline
var cx,cy,w,h,rot,sxx,sxy,syx,syy,x1,x2,x3,x4,y1,y2,y3,y4,tx,ty;
cx=argument0;
cy=argument1;
w=argument2/2; 
h=argument3/2; 
rot=argument4;

sxx = cos(degtorad(rot));
sxy = -sin(degtorad(rot));
syx = -sin(degtorad(rot));
syy = -cos(degtorad(rot));

tx = lengthdir_x(w,rot)
ty = lengthdir_y(w,rot)

x1=cx-sxx*w-syx*h;
x2=cx+sxx*w-syx*h;
x3=cx+sxx*w+syx*h;
x4=cx-sxx*w+syx*h;

y1=cy-sxy*w-syy*h;
y2=cy+sxy*w-syy*h;
y3=cy+sxy*w+syy*h;
y4=cy-sxy*w+syy*h;

if argument5=true
{
    draw_line(x1+tx,y1+ty,x4+tx,y4+ty);
    draw_line(x2+tx,y2+ty,x1+tx,y1+ty);
    draw_line(x3+tx,y3+ty,x2+tx,y2+ty);
    draw_line(x4+tx,y4+ty,x3+tx,y3+ty);
}
else
{
    draw_triangle(x1+tx,y1+ty,x2+tx,y2+ty,x3+tx,y3+ty,false);
    draw_triangle(x1+tx,y1+ty,x3+tx,y3+ty,x4+tx,y4+ty,false);
}