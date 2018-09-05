/// @description draw
draw_set_color(c_black)
if surface_exists(global.surf) { //als de surface bestaat drawen we de surface met de gewenste alpha, zo niet dan maken we de surface opnieuw aan
    draw_surface_ext(global.surf,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, alpha);
} else {
    global.surf=surface_create(__view_get( e__VW.WView, 0 )*10,__view_get( e__VW.HView, 0 )*10); 
};




