/// @description init
event_inherited()

///standard values
stats_init(1,1,1,6,1,1,0,0,1,20,100,1)

name="Temp name"
flying=false

///image
frame=0
imageindex=0
sprite="spr_demon_unit_5"
sprite_idle=string(sprite)+"_idle"
sprite_move=string(sprite)+"_move"
sprite_attack=string(sprite)+"_attack"
sprite_build=string(sprite)+"_build"
sprite_die=string(sprite)+"_die"
sprite_cover=string(sprite)+"_cover"
///mask
mask=asset_get_index(string(sprite)+"_hitbox")
mask_index=mask

