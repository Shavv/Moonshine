/// @description building_begin_step()
/*
if state!=99
{
 //alarm[9]=5
 if gms_instance_is_owner(id)
 {
  if alarm[10]>0
  {
   gms_instance_set(id,"hp",hp)
   gms_instance_set(id,"sp",sp)
   gms_instance_set(id,"f_msp",f_msp)
   gms_instance_set(id,"f_mhp",f_mhp)
   gms_instance_set(id,"team",team) 
   gms_instance_set(id,"flash",flash) 
  }
 }


 if alarm[10]=-1
 {
  hp=gms_instance_get_real(id,"hp")
  sp=gms_instance_get_real(id,"sp")
  f_mhp=gms_instance_get_real(id,"f_mhp")
  f_msp=gms_instance_get_real(id,"f_msp")
  team=gms_instance_get_real(id,"team")
  flash=gms_instance_get_real(id,"flash")
 }
}
