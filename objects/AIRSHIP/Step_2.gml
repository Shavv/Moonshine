/// @description move ship
if !place_meeting(x+sign(hspd),y,obj_wall)
{
 x+=hspd
}
if !place_meeting(x,y+sign(vspd),obj_wall)
{
 y+=vspd
}

