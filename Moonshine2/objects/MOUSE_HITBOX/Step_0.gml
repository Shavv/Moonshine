/// @description size and destroy
image_xscale=GAME.xxx-GAME.xx
image_yscale=GAME.yyy-GAME.yy

//if image_xscale<2 and image_xscale>-2 {image_xscale=1}
//if image_yscale<2 and image_yscale>-2 {image_yscale=1}

if mouse_check_button_released(mb_left)
{
 instance_destroy()
}

