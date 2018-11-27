//light_object()
if instance_exists(UNIT)
{
 with (UNIT)
 {
  if team=GAME.team {light((x-__view_get( e__VW.XView, 0 ))/LIGHTNING.res,((y-sprite_height/4)-__view_get( e__VW.YView, 0 ))/LIGHTNING.res,(320*mass)/LIGHTNING.res,c_white,true)}
 }
}

