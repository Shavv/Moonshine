f_mhp=i_mhp+b_mhp+mhp
f_msp=i_msp+b_msp+msp  
f_armor=i_armor+b_armor+armor
f_magir=i_magir+b_magir+magir
f_attack_distance=attack_distance+i_attack_distance+b_attack_distance
f_attack_cooldown=clamp(attack_cooldown-b_attack_cooldown-i_attack_cooldown,5,1000)  

if hp>f_mhp {hp=f_mhp}
if sp>f_msp {sp=f_msp}
if hp<0 {hp=0}
