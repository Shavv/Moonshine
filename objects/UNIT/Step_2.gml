/// @description stats
stats_step()

#region Mouse skill activate and de-activate

if global.leader=id
{
 if  draw[1]=false and draw[2]=false 
 and draw[3]=false and draw[4]=false
 {
  if GAME.alarm[10]=-1 {GAME.alarm[10]=10}
 }
  else
 {
  global.mouse_skill=true
 }
}
#endregion


///contact with floor and airship

/*
if !place_meeting(x,y,FLOOR)
{
 onground=false
}
 else
{
 onground=true
}
*/


if !place_meeting(x,y,AIRSHIP)
{
 onairship=false
}
 else
{
 onairship=true
}


if state=99
{
 hp=0	
}