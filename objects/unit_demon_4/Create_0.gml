/// @description init
event_inherited();

///standard values
name="Amon"
flying=false
stats_init(3,1,1,4,1,1,0,0,1,20,100,80)


//skill
skill_cooldown[0]=200

///image
sprite="spr_demon_unit_4"
sprite_idle=string(sprite)+"_idle"
sprite_move=string(sprite)+"_move"
sprite_attack=string(sprite)+"_attack"
sprite_die=string(sprite)+"_die"
sprite_cover=string(sprite)+"_cover"
///mask
mouse_mask=sprite_index
mask=asset_get_index(string(sprite)+"_hitbox")
mask_index=mask

