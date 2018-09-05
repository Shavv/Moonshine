/// @description sprite
event_inherited()

if spritestate="idle"   {set_image_step(asset_get_index(sprite_idle),0.2)}
if spritestate="walk"   {set_image_step(asset_get_index(sprite_walk),0.2)}
if spritestate="attack" {set_image_step(asset_get_index(sprite_attack),0.2)}
if spritestate="die"    {set_image_step(asset_get_index(sprite_die),0.2)}

