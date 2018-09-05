/// @description init
event_inherited()

///standard values
name="Acolyte"
flying=false
stats_init(2,1,1,2,4,1,0,0,1,40,100,80)

//skill
skill[0]=true
skill_cooldown[0]=150
skill_type[0]="toggle"

///image
sprite="spr_angel_unit_5"
sprite_idle=string(sprite)+"_idle"
sprite_move=string(sprite)+"_move"
sprite_attack=string(sprite)+"_attack"
sprite_die=string(sprite)+"_die"
sprite_cover=string(sprite)+"_cover"
///mask
mask=asset_get_index(string(sprite)+"_hitbox")
mask_index=mask

