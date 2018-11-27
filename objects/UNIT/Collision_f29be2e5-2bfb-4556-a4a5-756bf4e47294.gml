/// @description move outside
if other.mass!=undefined
{
 mask_index=mask
 pdir=point_direction(other.x,other.y,x,y)
 move_outside_all(pdir,other.mass) 
}
