/// @description init
event_inherited()

team=1
name="Main hall"

///sprite
sprite=spr_angel_building_1
sprite_speed=0.2
sprite_cover="spr_test_building_cover"
sprite_damaged=asset_get_index(sprite_get_name(sprite_index)+"_damaged")
mask=asset_get_index(sprite_get_name(sprite_index)+"_hitbox")
mouse_mask=sprite_index
mask_index=mask


