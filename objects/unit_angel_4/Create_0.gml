/// @description init
event_inherited()

///standard values
stats_init(1,4,1,1,1,1.3,0,0,1,70,100,90)

name="Athame"
flying=false

///image
sprite="spr_angel_unit_4"
sprite_idle=string(sprite)+"_idle"
sprite_move=string(sprite)+"_move"
sprite_attack=string(sprite)+"_attack"
sprite_die=string(sprite)+"_die"
sprite_cover=string(sprite)+"_cover"
///mask
mouse_mask=sprite_index
mask=asset_get_index(string(sprite)+"_hitbox")
mask_index=mask

