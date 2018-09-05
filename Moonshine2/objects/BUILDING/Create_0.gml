/// @description building
building_init(100,50,10,10,10,0,0)

///standard values
team=0
name="BUILDING TEST"

//variables needed
state=0
unit_number=-1
counted=false
walkx=x
walky=y
selected=false
target=noone
flash=false
solid=true


///image
sprite=spr_test_building
spritestate="idle"
sprite_cover="spr_test_building_cover"
sprite_speed=0.2
sprite_damaged=asset_get_index(sprite_get_name(sprite_index)+"_damaged")
mask=asset_get_index(sprite_get_name(sprite_index)+"_hitbox")
mouse_mask=sprite_index
mask_index=mask


///begin sync timer
alarm[10]=2

//normal sync timer
alarm[9]=1


