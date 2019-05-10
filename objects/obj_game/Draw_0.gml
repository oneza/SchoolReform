//draw_set_halign(fa_center);

//if(global.gameIsPaused){
//    draw_sprite_ext(screenShot,0,camera_get_view_x(camera),camera_get_view_y(camera),0.5,0.5,0,c_white,1);
//}

if (global.gameIsPaused){
	for(var i = array_height_2d(allObjects)-1; i >= 0; i--){
		if allObjects[i, 0] == sprite11
		{
			continue
		}
		draw_sprite_ext(allObjects[i, 0],
						allObjects[i, 1],
						allObjects[i, 2],
						allObjects[i, 3],
						allObjects[i, 4],
						allObjects[i, 5],
						allObjects[i, 6],
						allObjects[i, 7],
						allObjects[i, 8]
						);
	}
}