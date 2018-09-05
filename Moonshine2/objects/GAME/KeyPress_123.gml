/// @description reset room
with (SELECTABLE)
{
 select(false)
 instance_destroy()
}

with(CORPSE)
{
 instance_destroy()
}



