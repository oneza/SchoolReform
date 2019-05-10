//camera = view_get_camera(0);

//if(keyboard_check_pressed(vk_escape)){
//    global.gameIsPaused = !global.gameIsPaused;
//    if(!sprite_exists(screenShot)){
//        screenShot = sprite_create_from_surface(application_surface,0,0,view_get_wport(0) + 100,display_get_height(),0,0,0,0);    
//    }
//}


//if(global.gameIsPaused){
//    instance_deactivate_all(1);
//	x_for_pause = camera_get_view_x(camera) + 355;
//	y_for_pause = camera_get_view_y(camera);
//	instance_create_layer(x_for_pause, y_for_pause + 130, "UI", obj_resumebutton);
//	instance_create_layer(x_for_pause, y_for_pause + 200, "UI", obj_mainmenubutton);
//}
//else
//{
//	instance_destroy(obj_mainmenubutton)
//	instance_destroy(obj_resumebutton)
//    if(sprite_exists(screenShot)){
//        sprite_delete(screenShot);
//    }
//    instance_activate_all();
//}