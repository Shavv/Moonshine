/// @description init
event_inherited()

///standard values
stats_init(1,1,3,2,1,1.1,0,0,1,110,100,200)

name="Temp name"
flying=false

///image
sprite="spr_demon_unit_3"
sprite_idle=string(sprite)+"_idle"
sprite_move=string(sprite)+"_move"
sprite_attack=string(sprite)+"_attack"
sprite_die=string(sprite)+"_die"
sprite_cover=string(sprite)+"_cover"
///mask
mask=asset_get_index(string(sprite)+"_hitbox")
mask_index=mask

