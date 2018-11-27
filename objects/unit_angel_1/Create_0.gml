/// @description init
event_inherited()

///standard values
name="Acolyte"
flying=false
stats_init(3,1,1,3,1,1,0,0,1,20,100,80)


///image
sprite="spr_angel_unit_1"
sprite_idle=string(sprite)+"_idle"
sprite_move=string(sprite)+"_move"
sprite_attack=string(sprite)+"_attack"
sprite_die=string(sprite)+"_die"
sprite_cover=string(sprite)+"_cover"
///mask
mask=asset_get_index(string(sprite)+"_hitbox")
mask_index=mask

