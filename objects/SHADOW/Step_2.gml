/// @description surface and all shadows
if surface_exists(global.surf) {
    surface_set_target(global.surf); //vanaf hier wordt alles dat je drawt op de surface gedaan

    draw_clear_alpha(c_black, 0); //maak de surface leeg
    
    //draw shadows
    shadow_init_ext()
    
    surface_reset_target(); //nu draw je weer 'normaal' (dus niet meer op de surface)
} else {
    global.surf=surface_create(__view_get( e__VW.WView, 0 )*10,__view_get( e__VW.HView, 0 )*10); 
};

