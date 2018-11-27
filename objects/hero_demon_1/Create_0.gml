/// @description init
event_inherited();

///standard values
name="Amon"
flying=false
stats_init(8,5,1,4,1,1,0,0,1,20,100,150)


//skill
skill_cooldown[0]=200
skill_radius[0]=85
skill_range[0]=200

///image
sprite="spr_demon_hero_1"
sprite_idle=string(sprite)+"_idle"
sprite_move=string(sprite)+"_move"
sprite_attack=string(sprite)+"_attack"
sprite_die=string(sprite)+"_die"
sprite_cover=string(sprite)+"_cover"
///mask
mouse_mask=sprite_index
mask=asset_get_index(string(sprite)+"_hitbox")
mask_index=mask

