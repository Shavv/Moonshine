/// @description init
event_inherited()



///standard values
stats_init(1,1,1,1000,1,1,0,0,1,0,0,0)
team=98
name="Enemy Dummy"
flying=false
state=0
///image
spritestate="idle"
image_index=random(3)
sprite="spr_angel_unit_2"
sprite_idle=string(sprite)+"_idle"
sprite_walk=string(sprite)+"_idle"
sprite_attack=string(sprite)+"_idle"
sprite_die=string(sprite)+"_die"
sprite_cover=string(sprite)+"_idle"
///mask
mouse_mask=mask_index
mask=asset_get_index(string(sprite)+"_hitbox")
image_ignore=mask_index

