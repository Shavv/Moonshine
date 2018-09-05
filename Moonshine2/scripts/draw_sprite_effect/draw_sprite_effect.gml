/// @description draw_sprite_effect()

if flash=true and state!=99 
{
 d3d_set_fog(1,c_white,0,0)
 draw_self();
 d3d_set_fog(0,0,0,0)
 flash=false
}
 else
{
 draw_set_blend_mode(bm_normal)
 draw_self()
}

/*
if 
d3d_set_fog(1,c_black,0,0)


d3d_set_fog(0,0,0,0)
