/// @description select(true)
/// @param true
if team=GAME.team 
{
 if argument0=false
 {
  if counted=true
  {
   if global.leader=id {global.leader=-1}
   global.unit[unit_number]=-1
   //with (global.target) {selected=false counted=false}
   unit_number=-1
   selected=false
   counted=false
   global.agro_range=0
  } 
 }
  else
 {
  ///select
  cs=count_selected()
  if cs<global.maxselected
  {
   if counted=false
   {
    var i;
    for (i=0; i<global.maxselected ; i+=1)
    {
     if global.unit[i]=-1 {break;}
    }
    unit_number=i
    global.unit[i]=id
    if global.leader=-1 {global.leader=id}
    selected=true
    counted=true
   }
  } 
 }
}
 else
{
 if argument0=true
 {
  
  global.target=id
 }
  else
 {
  with (global.target) {selected=false}
  global.target=noone
 }
}
