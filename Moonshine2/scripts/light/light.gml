/// @description light(x,y,size,color,flicker)
/// @param x
/// @param y
/// @param size
/// @param color
/// @param flicker

draw_set_blend_mode(bm_subtract) //bm_subtract
if argument4=false draw_circle_colour(argument0,argument1,argument2,argument3,c_black,0)
if argument4=true  draw_circle_colour(argument0,argument1,random_range(argument2-1.5,argument2+1.5),argument3,c_black,0)
draw_set_blend_mode(bm_normal)
