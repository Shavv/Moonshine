///unit
stats_init(1,1,1,1,1,1,0,0,1,0,0,0)
mp_potential_settings(20,5,f_movespeed,1)


team=GAME.team
name="PARENT"
flying=false

//variables needed
end_animation=false
onground=true
onairship=false
double_click=0
dir=0
finish=true
unit_number=-1
counted=false
state=0
ai=0 ///0=agressive //1=passive agressive //2=passive
target=noone
agrotarget=noone
walkx=x
walky=y
startx=x
starty=y
selected=false
distance=0
attacked=false
attack=false
chase=true
charge=false
walk=true
flash=false

///sprite and mask
mask=asset_get_index(sprite_get_name(sprite_index)+"_hitbox")
mouse_mask=sprite_index//asset_get_index(sprite_get_name(sprite_index)+"_m_hitbox")
mask_index=mask
spritestate="idle"
image_ignore=mask_index

//skills
draw[0]=false
draw[1]=false
draw[2]=false
draw[3]=false

skill[0]=false
skill[1]=false
skill[2]=false
skill[3]=false

skill_type[0]="instant"
skill_type[1]="instant"
skill_type[2]="instant"
skill_type[3]="instant"

skill_cooldown[0]=0
skill_cooldown[1]=0
skill_cooldown[2]=0
skill_cooldown[3]=0

skill_sprite[0]=spr_none
skill_sprite[1]=spr_none
skill_sprite[2]=spr_none
skill_sprite[3]=spr_none

trigger[0]=false
trigger[1]=false
trigger[2]=false
trigger[3]=false

///begin sync timer
alarm[10]=2

//normal sync timer
alarm[9]=1
