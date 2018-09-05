/// @description mouse_on_ui()
if  mouse_on_ui_part(UI_x_map,UI_y_map,UI_x_map+UI_width_map,UI_y_map+UI_height_map)=false
and mouse_on_ui_part(UI_x_recources,UI_y_recources,UI_x_recources+UI_width_recources,UI_y_recources+UI_height_recources)=false
and mouse_on_ui_part_var(UI_x_section,UI_y_section,UI_x_section+UI_width_section,UI_y_section+UI_height_section,UI_section_link,-1)=false
and mouse_on_ui_part(UI_x_summary,UI_y_summary,UI_x_summary+UI_width_summary,UI_y_summary+UI_height_summary)=false
{
 global.mouse_ui=false
}
 else
{
 global.mouse_ui=true
}



/*
//mouse on recources
if (window_mouse_get_x()>UI_x_recources and window_mouse_get_x()<UI_x_recources+UI_width_recources)
and (window_mouse_get_y()>UI_y_recources and window_mouse_get_y()<UI_y_recources+UI_height_recources)

//mouse on minimap
and (window_mouse_get_x()>UI_x_map and window_mouse_get_x()<UI_x_map+UI_width_map)
and (window_mouse_get_y()>UI_y_map and window_mouse_get_y()<UI_y_map+UI_height_map)
// set the global mouse
{
 global.mouse_ui=true
} 
 else
{
 global.mouse_ui=false
}
