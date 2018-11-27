/// @description stats_step()
f_sta=i_sta+b_sta+sta
f_str=i_str+b_str+str
f_agi=i_agi+b_agi+agi
f_int=i_int+b_int+int
f_spi=i_spi+b_spi+spi
 
mhp=f_sta*8
msp=f_int*2
 
f_mhp=i_mhp+b_mhp+mhp
f_msp=i_msp+b_msp+msp 

f_movespeed=movespeed+b_movespeed+i_movespeed
f_mass=mass+b_mass+i_mass 

f_armor=i_armor+b_armor+armor
f_magir=i_magir+b_magir+magir 

f_follow_distance=follow_distance+i_follow_distance+b_follow_distance
f_attack_distance=f_follow_distance+attack_distance  
f_attack_cooldown=clamp(attack_cooldown-b_attack_cooldown-i_attack_cooldown,5,1000)  
 
  
//levelup
if xp>mxp
{
 level+=1
 mxp=level*5
 xp=0
}


///set for both
  
//max hp restriction
if hp>f_mhp {hp=f_mhp}
if sp>f_msp {sp=f_msp}
if hp<0 {hp=0}
